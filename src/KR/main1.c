
#include <stdio.h>

int main(void)
{
    int limit = 1000000;
    int f0 = 0;
    int f1 = 1;
    int sum = 0;
    int next = 0;

    while (f1 <= limit) {
        if (f1 % 2 == 0) {
            sum += f1;
        }
        next = f0 + f1;
        f0 = f1;
        f1 = next;
    }
    printf("%d", sum);
    return 0;
}
