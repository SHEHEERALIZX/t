section .data
    msg1: db "Number is Even", 10, 0
    msg1len: equ $ - msg1
    msg2: db "Number is Odd", 10, 0
    msg2len: equ $ - msg2
    msg3: db "Enter a number: ", 0
    msg3len: equ $ - msg3


section .text
    global _start

_start:
    mov eax,10
    and eax,1
    jz even
    mov eax,4
    mov ebx,1
    mov ecx,msg2
    mov edx,msg2len
    int 0x80
    jmp end
even:
    mov eax,4
    mov ebx,1
    mov ecx,msg1
    mov edx,msg1len
    int 0x80
end:
    mov eax,1
    mov ebx,0
    int 0x80

