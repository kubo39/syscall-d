# syscall.d

Raw syscall interface for D.

## Prerequirements

* DMD D Compiler >= 2.067.0

* Linux with x86_64 arch support only

* DUB >= 0.9.22 (Optional)

## Build

```
$ cd syscall.d
$ dub build
```

## Example

```d
import syscall : syscall, WRITE;

void main()
{
  string buf = "Hello\n";
  syscall(WRITE, 1, cast(ulong) buf.ptr, cast(ulong) buf.length);
}
```

You can try example from this repositry.

```
% cd syscall.d/example
$ dub build
$ ./hello
```
