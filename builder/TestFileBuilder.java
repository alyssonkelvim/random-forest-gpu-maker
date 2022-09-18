package builder;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import model.TreeStructure;

public class TestFileBuilder {
    public static void execute(List<TreeStructure> treeStructures, int featureQuantity){
        FileBuilder.execute(generateFunctions(), "out/functions.cu");
        FileBuilder.execute(generateMainFunction(featureQuantity), "out/main.cu");
        
    }

    private static String generateMainFunction(int featureQuantity) {
        String code =  "int main(int argc, char ** argv) {\n" +
        "     \n" +
        "    float elapsed_time;\n" +
        "    // set up device\n" +
        "    int dev = 0;\n" +
        "    cudaDeviceProp deviceProp;\n" +
        "    CHECK(cudaGetDeviceProperties(&deviceProp, dev));\n" +
        "    printf(\"Using Device %d: %s\\n\", dev, deviceProp.name);\n" +
        "    CHECK(cudaSetDevice(dev));\n" +
        "\n" +
        "    // set up data size of vectors\n" +
        "    int nElem = 1 << 25;\n" +
        "    printf(\"Vector Size %d\\n\", nElem);\n" +
        "\n" +
        "    // malloc host memory\n" +
        "    size_t nBytes = nElem * sizeof(float);\n" +
        "\n" +
        "    float %_DECLARING_FEATURES_%;\n" +
        "    int * h_P, * hostRef;\n" +
        "    %_MALLOC_FEATURES_%\n" +
        "    hostRef = (int * ) malloc(nBytes);\n" +
        "    h_P = (int * ) malloc(nBytes);\n" +
        "\n" +
        "    %_INICITALIZE_FEATURES_%\n" +
        "\n" +
        "    memset(hostRef, 0, nBytes);\n" +
        "    memset(h_P, 0, nBytes);\n" +
        "\n" +
        "    // malloc device global memory\n" +
        "    float %_DECLARING_GLOBAL_MEMORY_%;\n" +
        "    int * d_P;\n" +
        "    %_MALLOC_GLOBAL_MEMORY_%\n" +
        "    CHECK(cudaMalloc((int ** ) & d_P, nBytes));\n\n" +
        "\n" +
        "    // transfer data from host to device\n" +
        "    %_TRANSFER_DATA_TO_DEVICE_%" +
        "\n" +
        "    // invoke kernel at host side\n" +
        "    int iLen = 512;\n" +
        "    dim3 block(iLen);\n" +
        "    dim3 grid((nElem + block.x - 1) / block.x);\n" +
        "\n" +
        "    cudaEvent_t start, stop;\n" +
        "    CHECK(cudaEventCreate( & start));\n" +
        "    CHECK(cudaEventCreate( & stop));\n" +
        "    // record start event\n" +
        "    CHECK(cudaEventRecord(start, 0));\n" +
        "    RF_with_IF << < grid, block >>> (%_VARIABLES_%, d_P, nElem);\n" +
        "    CHECK(cudaEventRecord(stop, 0));\n" +
        "    CHECK(cudaEventSynchronize(stop));\n" +
        "    // calculate elapsed time\n" +
        "    CHECK(cudaEventElapsedTime( & elapsed_time, start, stop));\n" +
        "    printf(\"RF with IF - execution time = %.6fms\\n\", elapsed_time);\n" +
        "\n" +
        "    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));\n" +
        "    CHECK(cudaEventCreate( & start));\n" +
        "    CHECK(cudaEventCreate( & stop));\n" +
        "    // record start event\n" +
        "    CHECK(cudaEventRecord(start, 0));\n" +
        "    RF_with_EQ << < grid, block >>> (%_VARIABLES_%, d_P, nElem);\n" +
        "    CHECK(cudaEventRecord(stop, 0));\n" +
        "    CHECK(cudaEventSynchronize(stop));\n" +
        "    // calculate elapsed time\n" +
        "    CHECK(cudaEventElapsedTime( & elapsed_time, start, stop));\n" +
        "    printf(\"RF with EQ - execution time = %.6fms\\n\", elapsed_time);\n" +
        "\n" +
        "    CHECK(cudaGetLastError());\n" +
        "\n" +
        "    // copy kernel result back to host side\n" +
        "    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));\n" +
        "    printf(\"\\n \");\n" +
        "\n" +
        "    cudaDeviceSynchronize();\n" +
        "    for(int i = 0; i < nElem; i++){\n" +
        "        writeOutFile(h_P[i]);\n" +
        "    }\n" +
        "    // free host memory\n" +
        "    %_FREE_HOST_MEMORY_%\n" +
        "    free(hostRef);\n" +
        "\n" +
        "    return (0);\n" +
        " }";

        code = code.replace("%_DECLARING_FEATURES_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i -> " * h_"+i+"")
                .collect(Collectors.joining(", "))
        );

        code = code.replace("%_MALLOC_FEATURES_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i -> "\th_"+i+" = (float * ) malloc(nBytes);")
                .collect(Collectors.joining("\n"))
        );

        code = code.replace("%_INICITALIZE_FEATURES_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i -> "\treadInFile(h_"+i+", "+i+");")
                .collect(Collectors.joining("\n"))
        );

        code = code.replace("%_DECLARING_GLOBAL_MEMORY_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i -> "* d_"+i)
                .collect(Collectors.joining(", "))
        );

        code = code.replace("%_MALLOC_GLOBAL_MEMORY_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i ->  "    CHECK(cudaMalloc((float ** ) & d_"+i+", nBytes));")
                .collect(Collectors.joining("\n"))
        );
       
        code = code.replace("%_TRANSFER_DATA_TO_DEVICE_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i ->  "    CHECK(cudaMemcpy(d_"+i+", h_"+i+", nBytes, cudaMemcpyHostToDevice));")
                .collect(Collectors.joining("\n"))
        );
        
        code = code.replaceAll("%_VARIABLES_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i ->  "d_"+i)
                .collect(Collectors.joining(", "))
        );
        
        code = code.replace("%_FREE_HOST_MEMORY_%", 
            IntStream.range(0, featureQuantity)
                .mapToObj( i ->  "    free(h_"+i+");")
                .collect(Collectors.joining("\n"))
        );
        
        return code;
    }

    private static String generateFunctions() {
        return "#include <sys/time.h>\n" +
        "#define CHECK(call)                                                            \\\n" +
        "{                                                                              \\\n" +
        "    const cudaError_t error = call;                                            \\\n" +
        "    if (error != cudaSuccess)                                                  \\\n" +
        "    {                                                                          \\\n" +
        "        fprintf(stderr, \"Error: %s:%d, \", __FILE__, __LINE__);                 \\\n" +
        "        fprintf(stderr, \"code: %d, reason: %s\\n\", error,                       \\\n" +
        "                cudaGetErrorString(error));                                    \\\n" +
        "    }                                                                          \\\n" +
        "}\n" +
        "\n" +
        "\n" +
        "#include <cuda_runtime.h>\n" +
        "#include <stdio.h>\n" +
        "\n" +
        "\n" +
        "void initialData(float *ip, int size){\n" +
        "\n" +
        "  for (int i = 0; i < size; i++){\n" +
        "      ip[i] = (float)( rand() & 15 );\n" +
        "  }\n" +
        "  return;\n" +
        "}\n"+
        "FILE *inFile;\n" +
        "FILE *outFile;\n" +
        "\n" +
        "void readInFile(float *ip, int index){ \n" +
        "    char c;\n" +
        "    int i = 0, j = 0, readIndex = 0;\n" +
        "    char line[50];\n" +
        "    inFile = fopen(\"in/dataset.csv\",\"a\");\n" +
        "    printf(\"Lendo e exibindo os dados do arquivo \\n\\n\");\n" +
        "    c = fgetc(inFile);\n" +
        "    while (c != EOF){\n" +
        "        if(c == ',' || c == '\\n'){\n" +
        "            if(index == readIndex){\n" +
        "                ip[i] = atof(line);        \n" +
        "                i++;\n" +
        "            }\n" +
        "            for(int i = 0; i < 50; i++)\n" +
        "              line[i] = ' ';\n" +
        "            j = 0;\n" +
        "            readIndex++;\n" +
        "        }else{\n" +
        "            line[j] = c;\n" +
        "            j++;\n" +
        "        }\n" +
        "        \n" +
        "        if(c == '\\n'){\n" +
        "            readIndex = 0;\n" +
        "        }\n" +
        "        c = fgetc(inFile);\n" +
        "    }\n" +
        "    fclose(inFile);\n" +
        "}\n" + 
        "void writeOutFile(int value){\n" + 
        "    outFile = fopen(\"out/out_rf_with_if.csv\",\"a\");\n" +
        "    fprintf(outFile, \"%d\\\n\", value);\n" + 
        "    fclose(outFile);\n" +
        "}";
        }
}
