import syscall : syscall3, WRITE;

ulong write(ulong fd, string buf)
{
  return syscall3(WRITE, fd, cast(ulong) buf.ptr, cast(ulong) buf.length);
}

void main()
{
  ulong stdout = 1;
  write(stdout, "Hello\n");
}
