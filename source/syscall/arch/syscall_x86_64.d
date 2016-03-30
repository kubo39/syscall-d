module syscall.arch.syscall_x86_64;

ulong syscall0(ulong ident)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall1(ulong ident, ulong n)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall2(ulong ident, ulong n, ulong arg1)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall3(ulong ident, ulong n, ulong arg1, ulong arg2)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall4(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall5(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3, ulong arg4)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    mov R8, arg4[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}

ulong syscall6(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3, ulong arg4, ulong arg5)
{
  ulong ret;

  synchronized asm
  {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    mov R8, arg4[RBP];
    mov R9, arg5[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}
