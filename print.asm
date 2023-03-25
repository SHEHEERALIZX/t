section .data
my_array times 5 db 0x00

section .text
global _start
_start:

    ; assign new values to array elements using a loop
    mov ecx, 5              ; set loop counter to 5
    mov esi, my_array       ; set ESI to point to start of array
    mov al, 1               ; set initial value to store in array
loop_start:
    mov byte [esi], al      ; store value in current element of array
    inc esi                 ; move to next element of array
    inc al                  ; increment value to store in next element
    loop loop_start         ; repeat loop until counter reaches zero

stop:    
    mov eax, 1
    xor ebx, ebx
    int 0x80
