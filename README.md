# syscall-d [![Build Status](https://secure.travis-ci.org/kubo39/syscall-d.svg?branch=master)](http://travis-ci.org/kubo39/syscall-d)

Raw syscall interface for D.

## Prerequirements

* Linux/OSX with x86_64 arch support only

## Build

```
$ cd syscall-d
$ dub build --build=release
```

## Example

```d
import syscalld : syscall, WRITE;

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
