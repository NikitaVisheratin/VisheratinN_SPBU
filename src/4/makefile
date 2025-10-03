# Итоговый бинарник
app: main.o dynamicArray.o quickSort.o
	clang -Wall -Wextra -pedantic main.o dynamicArray.o quickSort.o -o app

# Генерация ассемблера из dynamicArray.c
dynamicArray.s: dynamicArray.c dynamicArray.h
	clang -Wall -Wextra -pedantic -O3 -S dynamicArray.c -o dynamicArray.s

# Генерация ассемблера из quickSort.c
quickSort.s: quickSort.c
	clang -Wall -Wextra -pedantic -O3 -S quickSort.c -o quickSort.s

# Ассемблирование .s -> .o
dynamicArray.o: dynamicArray.s
	clang -c dynamicArray.s -o dynamicArray.o

# Ассемблирование 2 .s -> .o
quickSort.o: quickSort.s
	clang -c quickSort.s -o quickSort.o

# Компиляция main.c
main.o: main.c dynamicArray.h
	clang -Wall -Wextra -pedantic -c main.c -o main.o

.PHONY: run clean
run: app
	./app

clean:
	rm -f *.o *.s app
