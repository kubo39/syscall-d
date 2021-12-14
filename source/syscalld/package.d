module syscalld;

version(Posix):
@system:

version(D_InlineAsm_X86_64)
{
    version(linux) public import syscalld.os.linux_x86_64;
    else version(OSX) public import syscalld.os.osx_x86_64;
    else version(FreeBSD) public import syscalld.os.freebsd_x86_64;

    public import syscalld.arch.syscall_x86_64;
}
else version(D_InlineAsm_X86)
{
    version(linux) public import syscalld.os.linux_x86;
    public import syscalld.arch.syscall_x86;
}

unittest
{
    static if (__traits(compiles, syscall(GETPID)))
        assert(syscall(GETPID) > 0);
    else
        static assert(false, "Not supported on your platform/architecture.");
}
