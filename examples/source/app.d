import syscalld : syscall, WRITE;

ulong write(ulong fd, string buf)
{
    return syscall(WRITE, fd, cast(ulong) buf.ptr, cast(ulong) buf.length);
}

void main()
{
    ulong stdout = 1;
    write(stdout, "Hello\n");
}
