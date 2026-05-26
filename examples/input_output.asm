; input_output.asm
; prints a prompt, reads input, prints it back

section .data
    prompt db "Enter text: ", 0xA
    prompt_len equ $ - prompt

section .bss
    buffer resb 100

section .text
    global _start

_start:
    ; print prompt
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, prompt_len
    syscall

    ; read input
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 100
    syscall

    ; write input back
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 100
    syscall

    ; exit
    mov rax, 60
    mov rdi, 0
    syscall