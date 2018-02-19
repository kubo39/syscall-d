module syscalld.os.linux_generic;

version(linux):

// Input: string of form "NR_xxxx"
// Output: string of form "enum XXXX = unistd.NR_xxxx"
private string _defSyscall()(string s) // Helper just used during CTFE.
{
    char[] buf = new char[s.length * 2 + 14];
    size_t wptr = 0;
    foreach (char c; "enum ")
        buf[wptr++] = c;
    foreach (char c; s[3 .. $])
    {
        // To upper case.
        if ('a' <= c && c <= 'z')
            buf[wptr++] = cast(char) (c + 'A' - 'a');
        else
            buf[wptr++] = c;
    }
    foreach (char c; " = unistd.")
        buf[wptr++] = c;
    foreach (char c; s)
        buf[wptr++] = c;
    buf[wptr++] = ';';
    buf[wptr++] = '\n';
    assert(wptr == buf.length);
    return cast(string) buf[0 .. wptr];
}

version (X86) private import unistd = mir.linux.arch.x86.uapi._asm.unistd;
else version (X86_64) private import unistd = mir.linux.arch.x86_64.uapi._asm.unistd;
else version (ARM) private import unistd = mir.linux.arch.arm.uapi._asm.unistd;
else version (AArch64) private import unistd = mir.linux.arch.asm_generic.unistd;
else version (SPARC) private import unistd = mir.linux.arch.sparc.uapi._asm.unistd;
else version (SPARC64) private import unistd = mir.linux.arch.sparc64.uapi._asm.unistd;
else version (Alpha) private import unistd = mir.linux.arch.alpha.uapi._asm.unistd;
else version (IA64) private import unistd = mir.linux.arch.ia64.uapi._asm.unistd;
else version (PPC) private import unistd = mir.linux.arch.ppc.uapi._asm.unistd;
else version (PPC64) private import unistd = mir.linux.arch.ppc64.uapi._asm.unistd;
else version (SH) private import unistd = mir.linux.arch.sh.uapi._asm.unistd;
else version (S390) private import unistd = mir.linux.arch.s390.uapi._asm.unistd;
else version (SystemZ) private import unistd = mir.linux.arch.systemz.uapi._asm.unistd;
else version (HPPA) private import unistd = mir.linux.arch.hppa.uapi._asm.unistd;
else version (HPPA64) private import unistd = mir.linux.arch.hppa64.uapi._asm.unistd;
else version (MIPS_O32) private import unistd = mir.linux.arch.mips_o32.uapi._asm.unistd;
else version (MIPS_N32) private import unistd = mir.linux.arch.mips_n32.uapi._asm.unistd;
else version (MIPS64) private import unistd = mir.linux.arch.mips64.uapi._asm.unistd;
else static assert(0, "Linux syscall constants not known for current architecture!");

static foreach (string member; __traits(allMembers, unistd))
    static if (member.length > 3 && member[0 .. 3] == "NR_")
        mixin(_defSyscall(member));

version (X86)
    static assert(GETRANDOM == 355);
else version (X86_64)
    static assert(GETRANDOM == 318);
else version (ARM)
    static assert(GETRANDOM == 384);
else version (AArch64)
    static assert(GETRANDOM == 278);
