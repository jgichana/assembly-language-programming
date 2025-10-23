; JAE / JNB → Jump if Above or Equal

section .data
    str_ae db "AX >= BX (Above or Equal). Joan Gichana -153356",10,0
    str_below db "AX < BX (Below). Joan Gichana - 153356 ",10,0

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jae above_equal

    mov ecx, str_below
    jmp print

above_equal:
    mov ecx, str_ae

print:
    mov eax,4
    mov ebx,1
    mov edx,50
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
