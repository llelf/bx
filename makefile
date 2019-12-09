CF=-minline-all-stringops -fno-asynchronous-unwind-tables -fno-stack-protector -Wall -Wno-pointer-sign -Wno-strict-aliasing -Wno-parentheses -Wno-unused-function -Wno-misleading-indentation -Wno-unused-value -Wno-int-in-bool-context
LF=-nostdlib A.S /usr/lib/libSystem.dylib
CF+=-Os -g3

bin/b: a.c b.c A.S *.h makefile
	$(CC) -o $@ $(LF) a.c b.c $(CF)

bin/k: a.c k.c *.h makefile
	$(CC) -o $@ $(LF) a.c k.c $(CF)

all: bin/b bin/k

