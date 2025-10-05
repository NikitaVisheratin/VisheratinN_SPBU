#include "stack.h"

#include <stdio.h>

int main(void)
{
    struct Stack stack = new();
    push(&stack, 1);
    push(&stack, 2);
    push(&stack, 3);
    int a = pop(&stack);
    push(&stack, 4);
    push(&stack, 5);
    push(&stack, 6);
    printf("%d\n", a);
    print(&stack);
}
