; This program calculates the length of a null-terminated string by counting characters until it reaches 0.

section .data
    str db "assembly", 0

section .bss
    length resb 1

section .text
    global _start

_start:
    mov rsi, str
    mov rcx, 0

count:
    mov al, [rsi]
    cmp al, 0
    je done

    inc rcx
    inc rsi
    jmp count

done:
    mov [length], cl

    mov rax, 60
    mov rdi, 0
    syscall
