#include <sys/time.h>
#define CHECK(call)                                                            \
{                                                                              \
    const cudaError_t error = call;                                            \
    if (error != cudaSuccess)                                                  \
    {                                                                          \
        fprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__);                 \
        fprintf(stderr, "code: %d, reason: %s\n", error,                       \
                cudaGetErrorString(error));                                    \
    }                                                                          \
}


#include <cuda_runtime.h>
#include <stdio.h>


void initialData(float *ip, int size){

  for (int i = 0; i < size; i++){
      ip[i] = (float)( rand() & 15 );
  }
  return;
}int main(int argc, char ** argv) {
     
    float elapsed_time;
    // set up device
    int dev = 0;
    cudaDeviceProp deviceProp;
    CHECK(cudaGetDeviceProperties(&deviceProp, dev));
    printf("Using Device %d: %s\n", dev, deviceProp.name);
    CHECK(cudaSetDevice(dev));

    // set up data size of vectors
    int nElem = 1 << 25;
    printf("Vector Size %d\n", nElem);

    // malloc host memory
    size_t nBytes = nElem * sizeof(float);

    float  * h_0,  * h_1,  * h_2,  * h_3,  * h_4,  * h_5,  * h_6,  * h_7,  * h_8,  * h_9,  * h_10;
    int * h_P, * hostRef;
    	h_0 = (float * ) malloc(nBytes);
	h_1 = (float * ) malloc(nBytes);
	h_2 = (float * ) malloc(nBytes);
	h_3 = (float * ) malloc(nBytes);
	h_4 = (float * ) malloc(nBytes);
	h_5 = (float * ) malloc(nBytes);
	h_6 = (float * ) malloc(nBytes);
	h_7 = (float * ) malloc(nBytes);
	h_8 = (float * ) malloc(nBytes);
	h_9 = (float * ) malloc(nBytes);
	h_10 = (float * ) malloc(nBytes);
    hostRef = (int * ) malloc(nBytes);
    h_P = (int * ) malloc(nBytes);

    	initialData(h_0, nElem);
	initialData(h_1, nElem);
	initialData(h_2, nElem);
	initialData(h_3, nElem);
	initialData(h_4, nElem);
	initialData(h_5, nElem);
	initialData(h_6, nElem);
	initialData(h_7, nElem);
	initialData(h_8, nElem);
	initialData(h_9, nElem);
	initialData(h_10, nElem);

    memset(hostRef, 0, nBytes);
    memset(h_P, 0, nBytes);

    // malloc device global memory
    float * d_0, * d_1, * d_2, * d_3, * d_4, * d_5, * d_6, * d_7, * d_8, * d_9, * d_10;
    int * d_P;
        CHECK(cudaMalloc((float ** ) & d_0, nBytes));
    CHECK(cudaMalloc((float ** ) & d_1, nBytes));
    CHECK(cudaMalloc((float ** ) & d_2, nBytes));
    CHECK(cudaMalloc((float ** ) & d_3, nBytes));
    CHECK(cudaMalloc((float ** ) & d_4, nBytes));
    CHECK(cudaMalloc((float ** ) & d_5, nBytes));
    CHECK(cudaMalloc((float ** ) & d_6, nBytes));
    CHECK(cudaMalloc((float ** ) & d_7, nBytes));
    CHECK(cudaMalloc((float ** ) & d_8, nBytes));
    CHECK(cudaMalloc((float ** ) & d_9, nBytes));
    CHECK(cudaMalloc((float ** ) & d_10, nBytes));
    CHECK(cudaMalloc((int ** ) & d_P, nBytes));

    // transfer data from host to device
        CHECK(cudaMemcpy(d_0, h_0, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_1, h_1, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_2, h_2, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_3, h_3, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_4, h_4, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_5, h_5, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_6, h_6, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_7, h_7, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_8, h_8, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_9, h_9, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_10, h_10, nBytes, cudaMemcpyHostToDevice));
    // invoke kernel at host side
    int iLen = 512;
    dim3 block(iLen);
    dim3 grid((nElem + block.x - 1) / block.x);

    cudaEvent_t start, stop;
    CHECK(cudaEventCreate( & start));
    CHECK(cudaEventCreate( & stop));
    // record start event
    CHECK(cudaEventRecord(start, 0));
    RF_with_IF << < grid, block >>> (d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, d_10, d_P, nElem);
    CHECK(cudaEventRecord(stop, 0));
    CHECK(cudaEventSynchronize(stop));
    // calculate elapsed time
    CHECK(cudaEventElapsedTime( & elapsed_time, start, stop));
    printf("RF with IF - execution time = %.6fms\n", elapsed_time);

    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));
    CHECK(cudaEventCreate( & start));
    CHECK(cudaEventCreate( & stop));
    // record start event
    CHECK(cudaEventRecord(start, 0));
    RF_with_EQ << < grid, block >>> (d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, d_10, d_P, nElem);
    CHECK(cudaEventRecord(stop, 0));
    CHECK(cudaEventSynchronize(stop));
    // calculate elapsed time
    CHECK(cudaEventElapsedTime( & elapsed_time, start, stop));
    printf("RF with EQ - execution time = %.6fms\n", elapsed_time);

    CHECK(cudaGetLastError());

    // copy kernel result back to host side
    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));
    printf("\n ");

    // free host memory
        free(h_0);
    free(h_1);
    free(h_2);
    free(h_3);
    free(h_4);
    free(h_5);
    free(h_6);
    free(h_7);
    free(h_8);
    free(h_9);
    free(h_10);
    free(hostRef);

    return (0);
 }