#pragma once

// структура для динамического массива
typedef struct {
    int* data;
    unsigned int size;
    unsigned int capacity;
} DynamicArray;

// объявление массива
void dArrayInit(DynamicArray* arr, unsigned int initial_capacity);
// расширение массива
void dArrayReserve(DynamicArray* arr, unsigned int new_capacity);
// добавление элемента в конец
void dArrayAppend(DynamicArray* arr, int value);
// print array
void dArrayPrint(DynamicArray* arr);
// сортировка массива QuickSort
void quickSort(DynamicArray* arr, int left, int right);
// функция сортировки
void dArraySort(DynamicArray* arr);
// удаление структуры
void dArrayDelete(DynamicArray* arr);
