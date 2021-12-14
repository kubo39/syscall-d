module syscalld.arch.syscall_x86;

version(Posix):
version(D_InlineAsm_X86):
@nogc:
nothrow:

int syscall(int ident)
{
    int ret;

    synchronized asm @nogc nothrow
    {
        mov EAX, ident;
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

int syscall(int ident, int n)
{
    int ret;

    synchronized asm @nogc nothrow
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

int syscall(int ident, int n, int arg1)
{
    int ret;

    synchronized asm @nogc nothrow
    {
        mov EAX, ident;
        mov EBX, n[EBP];
        mov ECX, arg1[EBP];
        int 0x80;
        mov ret, EAX;
    }
    return ret;
}

int syscall(int ident, int n, int arg1, int arg2)
{
    int ret;

    synchronized asm @nogc nothrow
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

int syscall(int ident, int n, int arg1, int arg2, int arg3)
{
    int ret;

    synchronized asm @nogc nothrow
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

int syscall(int ident, int n, int arg1, int arg2, int arg3, int arg4)
{
    int ret;

    synchronized asm @nogc nothrow
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

int syscall(int ident, int n, int arg1, int arg2, int arg3, int arg4, int arg5)
{
    int ret;

    synchronized asm @nogc nothrow
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





