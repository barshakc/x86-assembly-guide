; This program checks whether a string is a palindrome

section .data
    str db "madam", 0xA
    len equ $ - str - 1

section .text
    global _start

_start:
    mov rsi, str          ; start pointer
    mov rdi, str
    add rdi, len
    dec rdi               ; end pointer

check_loop:
    mov al, [rsi]
    mov bl, [rdi]

    cmp al, bl
    jne not_palindrome

    inc rsi
    dec rdi

    cmp rsi, rdi
    jl check_loop

palindrome:
    mov rax, 60
    mov rdi, 0            ; success
    syscall

not_palindrome:
    mov rax, 60
    mov rdi, 1            ; failure
    syscall
