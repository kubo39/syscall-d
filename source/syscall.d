module syscall;

version(linux)
{
  version(X86_64)
    version = SupportedPlatform;
}


version(SupportedPlatform):
@system:

immutable ulong READ                     = 0;
immutable ulong WRITE                    = 1;
immutable ulong OPEN                     = 2;
immutable ulong CLOSE                    = 3;
immutable ulong STAT                     = 4;
immutable ulong FSTAT                    = 5;
immutable ulong LSTAT                    = 6;
immutable ulong POLL                     = 7;
immutable ulong LSEEK                    = 8;
immutable ulong MMAP                     = 9;
immutable ulong MPROTECT                 = 10;
immutable ulong MUNMAP                   = 11;
immutable ulong BRK                      = 12;
immutable ulong RT_SIGACTION             = 13;
immutable ulong RT_SIGPROCMASK           = 14;
immutable ulong RT_SIGRETURN             = 15;
immutable ulong IOCTL                    = 16;
immutable ulong PREAD64                  = 17;
immutable ulong PWRITE64                 = 18;
immutable ulong READV                    = 19;
immutable ulong WRITEV                   = 20;
immutable ulong ACCESS                   = 21;
immutable ulong PIPE                     = 22;
immutable ulong SELECT                   = 23;
immutable ulong SCHED_YIELD              = 24;
immutable ulong MREMAP                   = 25;
immutable ulong MSYNC                    = 26;
immutable ulong MINCORE                  = 27;
immutable ulong MADVISE                  = 28;
immutable ulong SHMGET                   = 29;
immutable ulong SHMAT                    = 30;
immutable ulong SHMCTL                   = 31;
immutable ulong DUP                      = 32;
immutable ulong DUP2                     = 33;
immutable ulong PAUSE                    = 34;
immutable ulong NANOSLEEP                = 35;
immutable ulong GETITIMER                = 36;
immutable ulong ALARM                    = 37;
immutable ulong SETITIMER                = 38;
immutable ulong GETPID                   = 39;
immutable ulong SENDFILE                 = 40;
immutable ulong SOCKET                   = 41;
immutable ulong CONNECT                  = 42;
immutable ulong ACCEPT                   = 43;
immutable ulong SENDTO                   = 44;
immutable ulong RECVFROM                 = 45;
immutable ulong SENDMSG                  = 46;
immutable ulong RECVMSG                  = 47;
immutable ulong SHUTDOWN                 = 48;
immutable ulong BIND                     = 49;
immutable ulong LISTEN                   = 50;
immutable ulong GETSOCKNAME              = 51;
immutable ulong GETPEERNAME              = 52;
immutable ulong SOCKETPAIR               = 53;
immutable ulong SETSOCKOPT               = 54;
immutable ulong GETSOCKOPT               = 55;
immutable ulong CLONE                    = 56;
immutable ulong FORK                     = 57;
immutable ulong VFORK                    = 58;
immutable ulong EXECVE                   = 59;
immutable ulong EXIT                     = 60;
immutable ulong WAIT4                    = 61;
immutable ulong KILL                     = 62;
immutable ulong UNAME                    = 63;
immutable ulong SEMGET                   = 64;
immutable ulong SEMOP                    = 65;
immutable ulong SEMCTL                   = 66;
immutable ulong SHMDT                    = 67;
immutable ulong MSGGET                   = 68;
immutable ulong MSGSND                   = 69;
immutable ulong MSGRCV                   = 70;
immutable ulong MSGCTL                   = 71;
immutable ulong FCNTL                    = 72;
immutable ulong FLOCK                    = 73;
immutable ulong FSYNC                    = 74;
immutable ulong FDATASYNC                = 75;
immutable ulong TRUNCATE                 = 76;
immutable ulong FTRUNCATE                = 77;
immutable ulong GETDENTS                 = 78;
immutable ulong GETCWD                   = 79;
immutable ulong CHDIR                    = 80;
immutable ulong FCHDIR                   = 81;
immutable ulong RENAME                   = 82;
immutable ulong MKDIR                    = 83;
immutable ulong RMDIR                    = 84;
immutable ulong CREAT                    = 85;
immutable ulong LINK                     = 86;
immutable ulong UNLINK                   = 87;
immutable ulong SYMLINK                  = 88;
immutable ulong READLINK                 = 89;
immutable ulong CHMOD                    = 90;
immutable ulong FCHMOD                   = 91;
immutable ulong CHOWN                    = 92;
immutable ulong FCHOWN                   = 93;
immutable ulong LCHOWN                   = 94;
immutable ulong UMASK                    = 95;
immutable ulong GETTIMEOFDAY             = 96;
immutable ulong GETRLIMIT                = 97;
immutable ulong GETRUSAGE                = 98;
immutable ulong SYSINFO                  = 99;
immutable ulong TIMES                    = 100;
immutable ulong PTRACE                   = 101;
immutable ulong GETUID                   = 102;
immutable ulong SYSLOG                   = 103;
immutable ulong GETGID                   = 104;
immutable ulong SETUID                   = 105;
immutable ulong SETGID                   = 106;
immutable ulong GETEUID                  = 107;
immutable ulong GETEGID                  = 108;
immutable ulong SETPGID                  = 109;
immutable ulong GETPPID                  = 110;
immutable ulong GETPGRP                  = 111;
immutable ulong SETSID                   = 112;
immutable ulong SETREUID                 = 113;
immutable ulong SETREGID                 = 114;
immutable ulong GETGROUPS                = 115;
immutable ulong SETGROUPS                = 116;
immutable ulong SETRESUID                = 117;
immutable ulong GETRESUID                = 118;
immutable ulong SETRESGID                = 119;
immutable ulong GETRESGID                = 120;
immutable ulong GETPGID                  = 121;
immutable ulong SETFSUID                 = 122;
immutable ulong SETFSGID                 = 123;
immutable ulong GETSID                   = 124;
immutable ulong CAPGET                   = 125;
immutable ulong CAPSET                   = 126;
immutable ulong RT_SIGPENDING            = 127;
immutable ulong RT_SIGTIMEDWAIT          = 128;
immutable ulong RT_SIGQUEUEINFO          = 129;
immutable ulong RT_SIGSUSPEND            = 130;
immutable ulong SIGALTSTACK              = 131;
immutable ulong UTIME                    = 132;
immutable ulong MKNOD                    = 133;
immutable ulong USELIB                   = 134;
immutable ulong PERSONALITY              = 135;
immutable ulong USTAT                    = 136;
immutable ulong STATFS                   = 137;
immutable ulong FSTATFS                  = 138;
immutable ulong SYSFS                    = 139;
immutable ulong GETPRIORITY              = 140;
immutable ulong SETPRIORITY              = 141;
immutable ulong SCHED_SETPARAM           = 142;
immutable ulong SCHED_GETPARAM           = 143;
immutable ulong SCHED_SETSCHEDULER       = 144;
immutable ulong SCHED_GETSCHEDULER       = 145;
immutable ulong SCHED_GET_PRIORITY_MAX   = 146;
immutable ulong SCHED_GET_PRIORITY_MIN   = 147;
immutable ulong SCHED_RR_GET_INTERVAL    = 148;
immutable ulong MLOCK                    = 149;
immutable ulong MUNLOCK                  = 150;
immutable ulong MLOCKALL                 = 151;
immutable ulong MUNLOCKALL               = 152;
immutable ulong VHANGUP                  = 153;
immutable ulong MODIFY_LDT               = 154;
immutable ulong PIVOT_ROOT               = 155;
immutable ulong _SYSCTL                  = 156;
immutable ulong PRCTL                    = 157;
immutable ulong ARCH_PRCTL               = 158;
immutable ulong ADJTIMEX                 = 159;
immutable ulong SETRLIMIT                = 160;
immutable ulong CHROOT                   = 161;
immutable ulong SYNC                     = 162;
immutable ulong ACCT                     = 163;
immutable ulong SETTIMEOFDAY             = 164;
immutable ulong MOUNT                    = 165;
immutable ulong UMOUNT2                  = 166;
immutable ulong SWAPON                   = 167;
immutable ulong SWAPOFF                  = 168;
immutable ulong REBOOT                   = 169;
immutable ulong SETHOSTNAME              = 170;
immutable ulong SETDOMAINNAME            = 171;
immutable ulong IOPL                     = 172;
immutable ulong IOPERM                   = 173;
immutable ulong CREATE_MODULE            = 174;
immutable ulong INIT_MODULE              = 175;
immutable ulong DELETE_MODULE            = 176;
immutable ulong GET_KERNEL_SYMS          = 177;
immutable ulong QUERY_MODULE             = 178;
immutable ulong QUOTACTL                 = 179;
immutable ulong NFSSERVCTL               = 180;
immutable ulong GETPMSG                  = 181;
immutable ulong PUTPMSG                  = 182;
immutable ulong AFS_SYSCALL              = 183;
immutable ulong TUXCALL                  = 184;
immutable ulong SECURITY                 = 185;
immutable ulong GETTID                   = 186;
immutable ulong READAHEAD                = 187;
immutable ulong SETXATTR                 = 188;
immutable ulong LSETXATTR                = 189;
immutable ulong FSETXATTR                = 190;
immutable ulong GETXATTR                 = 191;
immutable ulong LGETXATTR                = 192;
immutable ulong FGETXATTR                = 193;
immutable ulong LISTXATTR                = 194;
immutable ulong LLISTXATTR               = 195;
immutable ulong FLISTXATTR               = 196;
immutable ulong REMOVEXATTR              = 197;
immutable ulong LREMOVEXATTR             = 198;
immutable ulong FREMOVEXATTR             = 199;
immutable ulong TKILL                    = 200;
immutable ulong TIME                     = 201;
immutable ulong FUTEX                    = 202;
immutable ulong SCHED_SETAFFINITY        = 203;
immutable ulong SCHED_GETAFFINITY        = 204;
immutable ulong SET_THREAD_AREA          = 205;
immutable ulong IO_SETUP                 = 206;
immutable ulong IO_DESTROY               = 207;
immutable ulong IO_GETEVENTS             = 208;
immutable ulong IO_SUBMIT                = 209;
immutable ulong IO_CANCEL                = 210;
immutable ulong GET_THREAD_AREA          = 211;
immutable ulong LOOKUP_DCOOKIE           = 212;
immutable ulong EPOLL_CREATE             = 213;
immutable ulong EPOLL_CTL_OLD            = 214;
immutable ulong EPOLL_WAIT_OLD           = 215;
immutable ulong REMAP_FILE_PAGES         = 216;
immutable ulong GETDENTS64               = 217;
immutable ulong SET_TID_ADDRESS          = 218;
immutable ulong RESTART_SYSCALL          = 219;
immutable ulong SEMTIMEDOP               = 220;
immutable ulong FADVISE64                = 221;
immutable ulong TIMER_CREATE             = 222;
immutable ulong TIMER_SETTIME            = 223;
immutable ulong TIMER_GETTIME            = 224;
immutable ulong TIMER_GETOVERRUN         = 225;
immutable ulong TIMER_DELETE             = 226;
immutable ulong CLOCK_SETTIME            = 227;
immutable ulong CLOCK_GETTIME            = 228;
immutable ulong CLOCK_GETRES             = 229;
immutable ulong CLOCK_NANOSLEEP          = 230;
immutable ulong EXIT_GROUP               = 231;
immutable ulong EPOLL_WAIT               = 232;
immutable ulong EPOLL_CTL                = 233;
immutable ulong TGKILL                   = 234;
immutable ulong UTIMES                   = 235;
immutable ulong VSERVER                  = 236;
immutable ulong MBIND                    = 237;
immutable ulong SET_MEMPOLICY            = 238;
immutable ulong GET_MEMPOLICY            = 239;
immutable ulong MQ_OPEN                  = 240;
immutable ulong MQ_UNLINK                = 241;
immutable ulong MQ_TIMEDSEND             = 242;
immutable ulong MQ_TIMEDRECEIVE          = 243;
immutable ulong MQ_NOTIFY                = 244;
immutable ulong MQ_GETSETATTR            = 245;
immutable ulong KEXEC_LOAD               = 246;
immutable ulong WAITID                   = 247;
immutable ulong ADD_KEY                  = 248;
immutable ulong REQUEST_KEY              = 249;
immutable ulong KEYCTL                   = 250;
immutable ulong IOPRIO_SET               = 251;
immutable ulong IOPRIO_GET               = 252;
immutable ulong INOTIFY_INIT             = 253;
immutable ulong INOTIFY_ADD_WATCH        = 254;
immutable ulong INOTIFY_RM_WATCH         = 255;
immutable ulong MIGRATE_PAGES            = 256;
immutable ulong OPENAT                   = 257;
immutable ulong MKDIRAT                  = 258;
immutable ulong MKNODAT                  = 259;
immutable ulong FCHOWNAT                 = 260;
immutable ulong FUTIMESAT                = 261;
immutable ulong NEWFSTATAT               = 262;
immutable ulong UNLINKAT                 = 263;
immutable ulong RENAMEAT                 = 264;
immutable ulong LINKAT                   = 265;
immutable ulong SYMLINKAT                = 266;
immutable ulong READLINKAT               = 267;
immutable ulong FCHMODAT                 = 268;
immutable ulong FACCESSAT                = 269;
immutable ulong PSELECT6                 = 270;
immutable ulong PPOLL                    = 271;
immutable ulong UNSHARE                  = 272;
immutable ulong SET_ROBUST_LIST          = 273;
immutable ulong GET_ROBUST_LIST          = 274;
immutable ulong SPLICE                   = 275;
immutable ulong TEE                      = 276;
immutable ulong SYNC_FILE_RANGE          = 277;
immutable ulong VMSPLICE                 = 278;
immutable ulong MOVE_PAGES               = 279;
immutable ulong UTIMENSAT                = 280;
immutable ulong EPOLL_PWAIT              = 281;
immutable ulong SIGNALFD                 = 282;
immutable ulong TIMERFD_CREATE           = 283;
immutable ulong EVENTFD                  = 284;
immutable ulong FALLOCATE                = 285;
immutable ulong TIMERFD_SETTIME          = 286;
immutable ulong TIMERFD_GETTIME          = 287;
immutable ulong ACCEPT4                  = 288;
immutable ulong SIGNALFD4                = 289;
immutable ulong EVENTFD2                 = 290;
immutable ulong EPOLL_CREATE1            = 291;
immutable ulong DUP3                     = 292;
immutable ulong PIPE2                    = 293;
immutable ulong INOTIFY_INIT1            = 294;
immutable ulong PREADV                   = 295;
immutable ulong PWRITEV                  = 296;
immutable ulong RT_TGSIGQUEUEINFO        = 297;
immutable ulong PERF_EVENT_OPEN          = 298;
immutable ulong RECVMMSG                 = 299;
immutable ulong FANOTIFY_INIT            = 300;
immutable ulong FANOTIFY_MARK            = 301;
immutable ulong PRLIMIT64                = 302;
immutable ulong NAME_TO_HANDLE_AT        = 303;
immutable ulong OPEN_BY_HANDLE_AT        = 304;
immutable ulong CLOCK_ADJTIME            = 305;
immutable ulong SYNCFS                   = 306;
immutable ulong SENDMMSG                 = 307;
immutable ulong SETNS                    = 308;
immutable ulong GETCPU                   = 309;
immutable ulong PROCESS_VM_READV         = 310;
immutable ulong PROCESS_VM_WRITEV        = 311;
immutable ulong KCMP                     = 312;
immutable ulong FINIT_MODULE             = 313;
immutable ulong SCHED_SETATTR            = 314;
immutable ulong SCHED_GETATTR            = 315;
immutable ulong RENAMEAT2                = 316;
immutable ulong SECCOMP                  = 317;
immutable ulong GETRANDOM                = 318;
immutable ulong MEMFD_CREATE             = 319;
immutable ulong KEXEC_FILE_LOAD          = 320;
immutable ulong BPF                      = 321;


ulong syscall(ulong ident)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n, ulong arg1)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n, ulong arg1, ulong arg2)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3, ulong arg4)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    mov R8, arg4[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


ulong syscall(ulong ident, ulong n, ulong arg1, ulong arg2, ulong arg3, ulong arg4, ulong arg5)
{
  ulong ret;

  synchronized asm {
    mov RAX, ident;
    mov RDI, n[RBP];
    mov RSI, arg1[RBP];
    mov RDX, arg2[RBP];
    mov R10, arg3[RBP];
    mov R8, arg4[RBP];
    mov R9, arg5[RBP];
    syscall;
    mov ret, RAX;
  }
  return ret;
}


unittest
{
  assert(syscall(GETPID) > 0);
}
