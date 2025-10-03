#include "dynamicArray.h"

#include <stdio.h>
#include <stdlib.h>

void dArrayInit(DynamicArray* arr, unsigned int initial_capacity)
{
    arr->size = 0;
    arr->capacity = initial_capacity;
    arr->data = malloc(initial_capacity * sizeof(int));
}

void dArrayReserve(DynamicArray* arr, unsigned int new_capacity)
{
    int* tmp = realloc(arr->data, new_capacity * sizeof(int));
    arr->data = tmp;
    arr->capacity = new_capacity;
}

void dArrayAppend(DynamicArray* arr, int value)
{
    if (arr->size == arr->capacity) {
        unsigned int new_capacity = arr->capacity + 25 * sizeof(int);
        dArrayReserve(arr, new_capacity);
    }
    arr->data[arr->size] = value;
    arr->size += 1;
}

void dArrayPrint(DynamicArray* arr)
{
    for (unsigned int i = 0; i < arr->size; ++i) {
        printf("%d ", arr->data[i]);
    }
    printf("\n");
}

void dArraySort(DynamicArray* arr)
{
    quickSort(arr, 0, arr->size - 1);
}

void dArrayDelete(DynamicArray* arr)
{
    free(arr->data);
}
