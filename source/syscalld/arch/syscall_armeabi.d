module syscalld.arch.syscall_armeabi;

version(LDC):

import ldc.llvmasm;

size_t syscall(size_t ident)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7}",
          ret, ident);
    return ret;
}

size_t syscall(size_t ident, size_t n)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0}",
          ret, ident, n);
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1}",
          ret, ident, n, arg1);
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1} {r2}",
          ret, ident, n, arg1, arg2);
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1} {r2} {r3}",
          ret, ident, n, arg1, arg2, arg3);
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3, size_t arg4)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1} {r2} {r3} {r4}",
          ret, ident, n, arg1, arg2, arg3, arg4);
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3, size_t arg4, size_t arg5)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1} {r2} {r3} {r4} {r5}",
          ret, ident, n, arg1, arg2, arg3, arg4, arg5);
    return ret;
}


size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3, size_t arg4, size_t arg5,
               size_t arg6)
{
    size_t ret;
    __asm("swi $$0",
          "={r0} {r7} {r0} {r1} {r2} {r3} {r4} {r5} {r6}",
          ret, ident, n, arg1, arg2, arg3, arg4, arg5, arg6);
    return ret;
}

