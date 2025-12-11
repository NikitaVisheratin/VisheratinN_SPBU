#include <stdio.h>
#include <string.h>

void sortString(char* string)
{
    int n = strlen(string);

    for (int i = 0; i < n; i++) {
        int min_i = i;
        for (int j = i + 1; j < n; j++) {
            if (string[j] < string[min_i])
                min_i = j;
        }
        char t = string[i];
        string[i] = string[min_i];
        string[min_i] = t;
    }
}

int main(void)
{ /*
     char string[100];
     if (scanf("%99s", string) != 1)
         return 0;

     sort_string(string);
     printf("%s\n", string);
     return 0;
 */
    char* tests[] = { "1000", "023442", "0", "" };
    char* expected[] = { "0001", "022344", "0", "" };

    for (int i = 0; i < 4; i++) {
        sortString(tests[i]);
        if (tests[i] == expected[i]) {
            printf("PASS\n");
        } else {
            printf("FAIL\n");
        }
    }

    return 0;
}
