import syscall : syscall, WRITE;

ulong write(ulong fd, string buf)
{
  return syscall(WRITE, 1, cast(ulong) buf.ptr, cast(ulong) buf.length);
}

void main()
{
  write(1L, "Hello\n");
}
