section .data
    x: db 11h, 65h, 33h, 44h, 55h
    largest: db 00h


section .text
    global _start
_start:
    
    mov ecx,05h
    mov al,00h ; to store the largest value
    mov esi,x

begin:
    cmp al,[esi]
    jnc next
    mov al,[esi]

next:
    inc esi
    dec ecx
    jnz begin
    mov [largest],al
    ; jmop stop       


stop:
    mov eax,1
    mov ebx,0
    int 80h


