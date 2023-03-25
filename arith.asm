section .data
    num1 dw 12
    num2 dw 5

    sum db 0h
    diff db 0h
    low db 0h
    high db 0h
    quotient db 0h
    remainder db 0h


section .text
    global _start

_start:
    mov ax,[num1]
    mov bx,[num2]
    add ax,bx
    mov [sum],ax

    mov ax,[num1]
    mov bx,[num2]
    mul bx
    mov [low],al
    mov [high],ah

stop:
    mov eax,1
    mov ebx,0
    int 0x80

    
