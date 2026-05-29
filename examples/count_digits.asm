; This program counts digits in a number.

section .text
    global _start

_start:
    mov rax, 12345
    xor rcx, rcx

count_loop:
    cmp rax, 0
    je done

    xor rdx, rdx
    mov rbx, 10
    div rbx

    inc rcx
    jmp count_loop

done:
    mov rax, 60
    mov rdi, 0
    syscall