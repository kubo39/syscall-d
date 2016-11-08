import syscalld : syscall, WRITE;

size_t write(size_t fd, string buf)
{
    return syscall(WRITE, fd, cast(size_t) buf.ptr, cast(size_t) buf.length);
}

void main()
{
    size_t stdout = 1;
    write(stdout, "Hello\n");
}
