; read_only.asm
; reads input from user (not displayed)

section .bss
    buffer resb 100

section .text
    global _start

_start:
    ; sys_read
    mov rax, 0      ; syscall number (read)
    mov rdi, 0      ; stdin
    mov rsi, buffer ; store input
    mov rdx, 100    ; max bytes
    syscall

    ; exit
    mov rax, 60
    mov rdi, 0
    syscall