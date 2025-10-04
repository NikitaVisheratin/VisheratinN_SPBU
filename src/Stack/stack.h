#pragma once

#include <stdbool.h>
#include <stddef.h>

//определяем структуру стека
typedef struct Stack {
    struct StackNode* head;
    size_t size;
} Stack;
//функция - шаблон заполнения
Stack new(void);
//функция очистки стека
Stack delete(Stack* stack);
//функция вставки в стек
void push(Stack* stack, int value);
//функция изъятия из стека
int pop(Stack* stack);
//функуция просмотра верхнего элемента
int peek(Stack* stack);
//функция печати размера стека и его элементов
void print(struct Stack* stack);
