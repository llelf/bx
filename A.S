#include<sys/syscall.h>

#define S(n) .globl _##n;_##n:;mov %rcx,%r10;mov $0x2000000+SYS_##n,%rax;syscall;ret;

S(read)S(write)S(open)S(close)S(fstat)S(mmap)S(munmap)S(exit)

