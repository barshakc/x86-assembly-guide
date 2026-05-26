; write_only.asm
; prints a message to the terminal

section .data
    msg db "Assembly Output Example", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    ; sys_write
    mov rax, 1      ; syscall number (write)
    mov rdi, 1      ; stdout
    mov rsi, msg    ; message address
    mov rdx, len    ; message length
    syscall

    ; exit program
    mov rax, 60
    mov rdi, 0
    syscall
``