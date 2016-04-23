module syscalld;

@system:

version(D_InlineAsm_X86_64)
{
    version(linux) import syscalld.arch.linux_x86_64;
    else version(OSX) import syscalld.arch.osx_x86_64;
    else static assert(false, "Not supoorted your platform/architecuture.");

    import syscalld.arch.syscall_x86_64;

}
else static assert(false, "Not supoorted your platform/architecuture.");

unittest
{
    assert(syscall(GETPID) > 0);
}
