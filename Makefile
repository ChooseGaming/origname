all:
	gcc *.c -o file.o -lm
run:
	./*.o;
clear:
	rm -rf *.o *.a *_test
check_fmt:
	clang-format -style=LLVM -i `find -regex ".+\.[ch]"` --dry-run --Werror
fmt:
	clang-format -style=LLVM -i `find -regex ".+\.[ch]"`
test:
	gcc *c -o file_test -lm; clear; ./file_test; rm -rf file_test
