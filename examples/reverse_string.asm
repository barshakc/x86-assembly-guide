; This program reverses a string by copying characters from the end of the string to a new buffer.

section .data
    str db "hello", 0xA
    len equ $ - str - 1   ; ignore newline

section .bss
    result resb 10

section .text
    global _start

_start:
    mov rcx, len          ; length of string
    mov rsi, str          ; source
    mov rdi, result       ; destination

reverse_loop:
    dec rcx
    mov al, [rsi + rcx]
    mov [rdi], al
    inc rdi

    cmp rcx, 0
    jne reverse_loop

    ; print reversed string
    mov rax, 1
    mov rdi, 1
    mov rsi, result
    mov rdx, len
    syscall

    ; exit
    mov rax, 60
    mov rdi, 0
    syscall