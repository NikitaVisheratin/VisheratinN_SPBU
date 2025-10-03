#include "dynamicArray.h"

#include <stdio.h>

int main(void)
{
    int value;
    char ch;
    DynamicArray array;

    dArrayInit(&array, 10);//создаем массив

    while (scanf("%d", &value)) { //читаем до \n
        dArrayAppend(&array, value);
        do {
            ch = getchar(); //смотрим поток до числа или \n
        } while (ch == ' ' || ch == '\t' || ch == '\r');

        if (ch == '\n') //отлавливаем \n
            break;

        ungetc(ch, stdin);
    }
    dArraySort(&array);
    dArrayPrint(&array);
    dArrayDelete(&array);
    return 0;
}
