section .data
    hello: db "Hi Mom dfdfd!",10 ; 10 is ASCII code for newline
    len: equ $-hello

    text2: db "Hi Mom! How are you",10
    len2: equ $-text2

section .text
    global _start

    _start:

        mov rax,1   ; system call number for write (sys_write)
        mov rdi,1  ; file descriptor (stdout)
        mov rsi,hello ; address of string to output
        mov rdx,len ; length of string
        syscall ; call kernel

        mov rax,1 
        mov rdi,1
        mov rsi,text2
        mov rdx,len2
        syscall



        mov rax,60 ; system call number for exit (sys_exit)
        mov rdi,0 ; exit code
        syscall
    


