module syscalld.arch.syscall_x86;

size_t syscall(size_t ident)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        mov EDX, arg2[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        mov EDX, arg2[EBP];
        mov ESI, arg3[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3, size_t arg4)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        mov EDX, arg2[EBP];
        mov ESI, arg3[EBP];
        mov EDI, arg4[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

size_t syscall(size_t ident, size_t n, size_t arg1, size_t arg2, size_t arg3, size_t arg4, size_t arg5)
{
    size_t ret;

    synchronized asm
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        mov EDX, arg2[EBP];
        mov ESI, arg3[EBP];
        mov EDI, arg4[EBP];
        mov EBP, arg5[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}





