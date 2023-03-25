section .data
    hello: db "Hi Mom dfdfd!"
    len: equ $-hello

    text2: db "Hi Mom! How are you",10
    len2: equ $-text2

section .text
    global _start

    _start:
        mov rax,1 
        mov rdi,1
        mov rsi,hello
        mov rdx,len
        syscall

    


     


        mov rax,1 
        mov rdi,1
        mov rsi,text2
        mov rdx,len2
        syscall

        mov rax,60
        mov rdi,0
        syscall
    


