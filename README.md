# HelloWorldMacStolyarov
This hello world taken from book http://www.stolyarov.info/books/asm_unix

stud_io.inc taken from this link: http://www.stolyarov.info/files/stud_io_inc_freebsd

Commands to compile:
```
nasm -f macho32 2lab.asm
ld -macosx_version_min 10.7.0 -lSystem -o 2lab 2lab.o
./2lab
```
# WARNING
## Compile in 32 bit mode, stud_io.inc does not support 64 bit