;           global    start

;           section   .text
; start:    mov       rax, 0x02000004         ; system call for write
;           mov       rdi, 1                  ; file handle 1 is stdout
;           mov       rsi, message            ; address of string to output
;           mov       rdx, 18                 ; number of bytes
;           syscall                           ; invoke operating system to do the write
;           mov       rax, 0x02000001         ; system call for exit
;           xor       rdi, rdi                ; exit code 0
;           syscall                           ; invoke operating system to exit

;           section   .data
; message:  db        "Hellllllo, World", 10      ; note the newline at the end


%include "stud_io.inc"


global  start


section .text
start: mov    eax, 0
again: PRINT   "Hello"
       PUTCHAR 10
       inc      eax
       cmp      eax, 5
       jl       again
       FINISH