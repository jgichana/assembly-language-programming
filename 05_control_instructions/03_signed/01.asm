; JG / JNLE → Jump if Greater
section .data
    msg_greater db "AX > BX (Signed Greater). Joan Gichana - 153356",10,0
    msg_not_greater db "AX <= BX (Not Greater). Joan Gichana - 153356",10,0

section .text
    global _start
_start:
    mov ax,7
    mov bx,3
    cmp ax,bx
    jg greater

    mov ecx, msg_not_greater
    jmp print

greater:
    mov ecx, msg_greater

print:
    mov eax,4
    mov ebx,1
    mov edx,49
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
