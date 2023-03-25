section .data
    num1 db 05h
    num2 db 10h
    result db 00h


section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    add al, bl
    mov [result], al

stop:
    mov eax,1
    mov ebx,0
    int 80h

