#include "stack.h"

#include <stdio.h>
#include <stdlib.h>

typedef struct StackNode{
    int value;
    struct StackNode* next;
} StackNode;

Stack new(void) {
    struct Stack s;
    s.head = NULL;
    s.size = 0;
    return s;
}

Stack delete(Stack* stack)
{
    StackNode* node = stack->head;
    //удаляем все вершины с верхней до нижней
    while (node!=NULL){
        StackNode* next = node->next;
        free(node);
        node = next;
    }
    stack->head = NULL;
    stack->size = 0;
}

void push(struct Stack* stack, int value)
{   
    //распределяем дин память под вершину
    StackNode* node = (StackNode*)malloc(sizeof(StackNode));
    node->value = value;
    node->next = stack->head;
    stack->head = node;
    stack->size++;
}

int pop(struct Stack* stack)
{
    StackNode* oldNode = stack->head;
    int res = oldNode->value;
    stack->head = oldNode->next;
    stack->size--;
    free(oldNode);
    return res;
}

int peek(struct Stack* stack)
{
    return stack->head->value;
}

void print(struct Stack* stack){
    printf("size = %zu\n", stack->size);
    StackNode* node = stack->head;
    while (node!=NULL){
        printf("%d   ", node->value);
        StackNode* next = node->next;
        node = next;
    }   
}
