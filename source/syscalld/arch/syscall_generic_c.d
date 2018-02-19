module syscalld.arch.syscall_generic_c;

version(linux)
{
    import core.sys.posix.sys.types : c_long;
    extern (C) synchronized c_long syscall (c_long ident, ...) @nogc nothrow;
}
