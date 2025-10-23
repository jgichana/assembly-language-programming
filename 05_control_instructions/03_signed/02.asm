; JGE / JNL → Jump if Greater or Equal
section .data
    msg_ge db "AX >= BX (Signed Greater or Equal). Joan Gichana - 153356",10,0
    msg_less db "AX < BX (Signed Less). Joan Gichana - 153356",10,0

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jge ge_label

    mov ecx, msg_less
    jmp print

ge_label:
    mov ecx, msg_ge

print:
    mov eax,4
    mov ebx,1
    mov edx,49
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
