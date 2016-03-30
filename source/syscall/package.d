module syscall;

@system:

version(D_InlineAsm_X86_64)
{
  version(linux) public import syscall.arch.linux_x86_64;
  else version(OSX) public import syscall.arch.osx_x86_64;
  else static assert(false, "Not supoorted your platform/architecuture.");

  public import syscall.arch.syscall_x86_64;
}
else static assert(false, "Not supoorted your platform/architecuture.");

unittest
{
  assert(syscall0(GETPID) > 0);
}
