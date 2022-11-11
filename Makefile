
test: main.c lib/ttf.h lib/libttf.a
	gcc -std=c2x -o build/test.exe main.c -L"./lib" -lttf

lib/ttf.h: ttf.h
	cp ttf.h lib/ttf.h

lib/libttf.a: bin/ttf.o lib/ttf.h
	ar rcs lib/libttf.a bin/ttf.o

bin/ttf.o: ttf.c ttf.h
	gcc -std=c2x -c -o bin/ttf.o ttf.c

install: lib/ttf.h lib/libittf.a
	cp lib/ttf.h "C:\\libs\\ttf.h"
	cp lib/libttf.a "C:\\libs\\libttf.a"
