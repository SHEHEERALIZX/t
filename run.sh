nasm -felf64 -o bcdtohexa.o bcdtohexa.asm 
ld -o bcdtohexa bcdtohexa.o 
./bcdtohexa