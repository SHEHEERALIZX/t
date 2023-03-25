section .data
    hex: db 00h
    bcd: db 85h

section .text
    global _start    
_start:
    mov al,[bcd]
    mov bl,al
    and al,0f0h
    mov bl,al

    and al,0f0h
    mov dl,00h

    mov cl,04h
    ror al,cl
    mul al

    and bl,0fh
    add al,bl

    mov [hex],al


    

stop:
    mov eax,1   
    mov ebx,0
    int 80h  
