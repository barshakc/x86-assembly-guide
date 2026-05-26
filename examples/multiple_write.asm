; multiple_write.asm
; prints two messages

section .data
    msg1 db "First message", 0xA
    len1 equ $ - msg1

    msg2 db "Second message", 0xA
    len2 equ $ - msg2

section .text
    global _start

_start:
    ; first message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg1
    mov rdx, len1
    syscall

    ; second message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg2
    mov rdx, len2
    syscall

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall