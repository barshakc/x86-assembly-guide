; This program calculates the factorial of a number

section .text
    global _start

_start:
    mov rax, 1      ; result
    mov rbx, 5      ; number

loop_start:
    cmp rbx, 1
    jl done

    imul rax, rbx
    dec rbx
    jmp loop_start

done:
    mov rax, 60
    mov rdi, 0
    syscall