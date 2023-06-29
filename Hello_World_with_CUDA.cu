#include <stdio.h>
#include <cuda_runtime.h>

__global__ void outputFromGPU() {

    printf("Hello World from the GPU!\n");
}

int main(void) {

    printf("Hello Word from the CPU!\n");

    outputFromGPU<<<1,1>>>();

    cudaDeviceSynchronize();

    printf("Hello World from the CPU AGAIN!\n");

    return 0;
}