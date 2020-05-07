module syscalld;

@system:

version(D_InlineAsm_X86_64)
{
    version(linux) import syscalld.os.linux_x86_64;
    else version(OSX) import syscalld.os.osx_x86_64;
    else version(FreeBSD) import syscalld.os.freebsd_x86_64;
    else static assert(false, "Not supported on your platform/architecuture.");

    import syscalld.arch.syscall_x86_64;
}
else version(D_InlineAsm_X86)
{
    version(linux) import syscalld.os.linux_x86;
    else static assert(false, "Not supported on your platform/architecuture.");
    import syscalld.arch.syscall_x86;
}
else static assert(false, "Not supported on your platform/architecuture.");

unittest
{
    assert(syscall(GETPID) > 0);
}
