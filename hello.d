import syscall : syscall, WRITE;

void main()
{
  string buf = "Hello\n";
  syscall(WRITE, 1, cast(ulong) buf.ptr, cast(ulong) buf.length);
}




