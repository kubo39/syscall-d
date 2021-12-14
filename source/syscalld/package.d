module syscalld;

@system:

version(D_InlineAsm_X86_64)
{
    version(linux) public import syscalld.os.linux_x86_64;
    else version(OSX) public import syscalld.os.osx_x86_64;
    else version(FreeBSD) public import syscalld.os.freebsd_x86_64;
    else static assert(false, "Not supported on your platform/architecuture.");

    public import syscalld.arch.syscall_x86_64;
}
else version(D_InlineAsm_X86)
{
    version(linux) public import syscalld.os.linux_x86;
    else static assert(false, "Not supported on your platform/architecuture.");
    public import syscalld.arch.syscall_x86;
}
else static assert(false, "Not supported on your platform/architecuture.");

unittest
{
    assert(syscall(GETPID) > 0);
}
