section .data
    x: db 10h,20h,30h,40h,50h
    y: db 00h,00h,00h,00h,00h

section .text
    global _start

_start:
    mov cx,05h
    mov esi,x
    mov edi,y

loop:
    mov al,[esi]
    mov [edi],al
    inc esi
    inc edi

    dec cx
    jnz loop


stop:
    mov eax,1
    mov ebx,0
    int 80h
             
