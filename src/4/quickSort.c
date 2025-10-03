#include "dynamicArray.h"

void quickSort(DynamicArray* arr, int left, int right)
{
    int pivot = arr->data[left];
    int tLeft = left; // левая граница
    int tRight = right; // правая граница

    while (tLeft < tRight) // смыкание границ
    {
        while ((arr->data[tRight] > pivot) && (tLeft < tRight))
            tRight--;
        if (tLeft != tRight) {
            arr->data[tLeft] = arr->data[tRight];
            tLeft++;
        }
        while ((arr->data[tLeft] < pivot) && (tLeft < tRight))
            tLeft++;
        if (tLeft != tRight) {
            arr->data[tRight] = arr->data[tLeft];
            tRight--;
        }
    }
    arr->data[tLeft] = pivot;
    if (left < tLeft - 1)
        quickSort(arr, left, tLeft - 1);
    if (tLeft + 1 < right)
        quickSort(arr, tLeft + 1, right);
}
