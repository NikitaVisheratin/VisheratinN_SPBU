#include <stdbool.h>
#include <stdio.h>

int compare(const bool* A, size_t n, const bool* B, size_t m)
{

    if (n > m)
        return 1; // больше первое
    if (n < m)
        return -1; // больше второе

    // одинаковая длина
    // вывод 1 если первое больше
    // вывод -1 если второе больше
    for (size_t i = 0; i < n; ++i) {
        if (A[i] != B[i]) {
            return A[i] ? 1 : -1;
        }
    }

    return 0; // равны
}

int main(void./)
{
    // 0
    bool num1[] = { true, false, true, false };
    bool num2[] = { true, false, true, false };
    printf("Результат: %d\n", compare(num1, sizeof(num1), num2, sizeof(num2)));
    // 1
    bool num3[] = { true, false, true, false };
    bool num4[] = { true, false, false, true };
    printf("Результат: %d\n", compare(num3, sizeof(num3), num4, sizeof(num4)));

    // -1
    bool num5[] = { false, true, false, false };
    bool num6[] = { true, false, false, true };
    printf("Результат: %d\n", compare(num5, sizeof(num5), num6, sizeof(num6)));

    // -1
    bool num7[] = { true, false, false };
    bool num8[] = { true, false, false, true };
    printf("Результат: %d\n", compare(num7, sizeof(num7), num8, sizeof(num8)));

    return 0;
}