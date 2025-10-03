#include "dynamicArray.h"

#include <stdio.h>

int main(void)
{
    int value;
    char ch;
    DynamicArray array;

    dArrayInit(&array, 10);

    while (scanf("%d", &value)) {
        dArrayAppend(&array, value);
        do {
            ch = getchar();
        } while (ch == ' ' || ch == '\t' || ch == '\r');

        if (ch == '\n')
            break;

        ungetc(ch, stdin);
    }
    dArraySort(&array);
    dArrayPrint(&array);
    dArrayDelete(&array);
    return 0;
}
