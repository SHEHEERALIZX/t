section .data
    hexa: db 0101
    bcd: db 00,00,00

section .text   
    global _start    

_start: 
    mov al,[hexa]
    mov ah,00h
    mov edi,bcd
    mov bl,64h
    div bl
    mov [edi],al

    inc edi

    mov al,ah
    mov ah,00h
    mov bl,64h
    div bl
    mov [edi],al

    inc edi
    mov [edi],ah

stop:
    mov eax,1
    mov ebx,0
    int 0x80

    