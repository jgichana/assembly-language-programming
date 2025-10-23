; JLE / JNG → Jump if Less or Equal
section .data
    msg_less db "AX <= BX (Signed Less or Equal). Joan Gichana - 153356",10,0
    len_less equ $ - msg_less
    msg_greater db "AX > BX (Greater). Joan Gichana - 153356",10,0
    len_greater equ $ - msg_greater

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jle le_label

    mov ecx, msg_greater
    jmp print

le_label:
    mov ecx, msg_less

print:
    mov eax,4
    mov ebx,1
    mov edx,55
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
