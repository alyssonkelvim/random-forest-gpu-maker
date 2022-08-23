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
}