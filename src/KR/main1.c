#include <stdio.h>

int main(void)
{
    int a[1000];
    int n = 0;

    printf("Введите последовательность целых чисел.\n");
    printf("Завершите ввод числом 0:\n");

    // считываем
    while (1) {
        int x;
        if (scanf("%d", &x) != 1) {
            printf("");
            int c;
            while ((c = getchar()) != EOF && c != '\n')
                ;
            continue;
        }
        if (x == 0)
            break;
        if (n < 1000)
            a[n++] = x;
    }

    // сортируем
    for (int i = 1; i < n; i++) {
        int key = a[i];
        int j = i - 1;
        while (j >= 0 && a[j] > key) {
            a[j + 1] = a[j];
            j--;
        }
        a[j + 1] = key;
    }

    if (n == 0) {
        printf("Пусто");
        return 0;
    }
    // выводим
    int i = 0;
    while (i < n) {
        int value = a[i];
        int count = 1;
        i++;
        while (i < n && a[i] == value) {
            count++;
            i++;
        }
        printf("%d-%d раз\n", value, count);
    }

    return 0;
}
