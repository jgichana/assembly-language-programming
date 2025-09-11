; Basic types
; Assemble the program: nasm -f elf64 data_types.asm -o data_types.o
; same as line 2        nasm -f elf64 -o data_types.o data_types.asm 
; Link it:              ld data_types.o -o data_types
; Run the file          ./data_types

section .data 
;for declaring variables
    ; Basic integer types
    myByte   db  0x41            ; 1 byte
    myWord   dw  0x4243          ; 2 bytes
    myDword  dd  123456          ; 4 bytes
    myQword  dq  1234567890123   ; 8 bytes

    ; Null-terminated string to mark where end of the string is
    myString db "Hello", 0

section .bss
;declare uninitialized variables
    ; Uninitialized data - allocated by OS
    buffer   resb 64             ; Reserve 64 bytes

section .text
;actual code to be run
    global _start

_start:
    ; Load different data types into registers
    mov al, [myByte]     ; 1 byte into AL, 8 bits
    mov ax, [myWord]     ; 2 bytes into AX, 16 bits
    mov eax, [myDword]   ; 4 bytes into EAX, 32 bits
    mov rax, [myQword]   ; 8 bytes into RAX, 64 bits

    ; Exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
