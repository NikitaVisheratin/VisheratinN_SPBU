#include <stdbool.h>
#include <stdio.h>
#include <string.h>

bool palindrome(char* s)
{
    size_t i = 0;
    size_t j = strlen(s)-1;
    if (j <= 1)
        return true;
    // сходимся с двух сторон игнорируя пробелы
    while (i < j) {
        while (i < j && s[i] == ' ')
            i++;
        while (i < j && s[j] == ' ')
            j--;
        if (i >= j)  // на всякий случай
            break;

        if (s[i] != s[j]) {
            return false;
        }
        i++;
        j--;
    }
    return true;
}

int main(void)
{
    char array[] = "was saw";
    printf(palindrome(array) ? "YES\n" : "NO\n");
    return 0;
}
