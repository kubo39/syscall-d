module syscalld;

@system:

version(D_InlineAsm_X86_64)
{
    version(linux) import syscalld.os.linux_x86_64;
    else version(OSX) import syscalld.os.osx_x86_64;
    else version(FreeBSD) import syscalld.os.freebsd_x86_64;
    else static assert(false, "Your platform/architecuture is not supported.");

    import syscalld.arch.syscall_x86_64;
}
else version(D_InlineAsm_X86)
{
    version(linux) import syscalld.os.linux_x86;
    else static assert(false, "Your platform/architecuture is not supported.");
    import syscalld.arch.syscall_x86;
}
else version(linux)
{
    public import syscalld.os.linux_generic;
    public import syscalld.arch.syscall_generic_c;
}
else static assert(false, "Your platform/architecuture is not supported.");

unittest
{
    assert(syscall(GETPID) > 0);
}
