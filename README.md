# syscall.d [![Build Status](https://secure.travis-ci.org/kubo39/syscall.d.png?branch=master)](http://travis-ci.org/kubo39/syscall.d)

Raw syscall interface for D.

## Prerequirements

* DMD D Compiler >= 2.067.0

* Linux/OSX with x86_64 arch support only

* DUB >= 0.9.22 (Optional)

## Build

```
$ cd syscall.d
$ dub build
```

## Example

```d
import syscall : syscall, WRITE;

ulong write(ulong fd, string buf)
{
  return syscall(WRITE, fd, cast(ulong) buf.ptr, cast(ulong) buf.length);
}

void main()
{
  ulong stdout = 1;
  write(stdout, "Hello\n");
}
```
