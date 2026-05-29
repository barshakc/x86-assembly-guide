; This program finds the maximum value in an array.

section .data
    arr db 3, 7, 2, 9, 5
    len equ 5

section .bss
    max resb 1

section .text
    global _start

_start:
    mov rsi, arr
    mov rcx, len

    mov al, [rsi]    ; first element as max

find_loop:
    mov bl, [rsi]
    cmp bl, al
    jle skip

    mov al, bl

skip:
    inc rsi
    loop find_loop

    mov [max], al

    mov rax, 60
    mov rdi, 0
    syscall
``