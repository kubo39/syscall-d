# syscall-d [![Build Status](https://secure.travis-ci.org/kubo39/syscall-d.svg?branch=master)](http://travis-ci.org/kubo39/syscall-d)

Raw syscall interface for D.

## Supported Platforms

- Linux-x86_64
- Linux-x86
- OSX-x86_64
- FreeBSD-x86_64

## Build

```
$ cd syscall-d
$ dub build --build=release
```

## Example

```d
import syscalld : syscall, WRITE;

size_t write(size_t fd, string buf)
{
    return syscall(WRITE, fd, cast(size_t) buf.ptr, cast(size_t) buf.length);
}

void main()
{
    size_t stdout = 1;
    write(stdout, "Hello\n");
}
```
