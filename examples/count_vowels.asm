; This program counts the number of vowels (a, e, i, o, u)
; in a given string stored in memory.


section .data
    input db "hello world", 0xA
    len equ $ - input - 1

section .bss
    count resb 1

section .text
    global _start

_start:
    mov byte [count], 0
    mov rsi, input
    mov rcx, len

count_loop:
    mov al, [rsi]

    cmp al, 'a'
    je inc_count
    cmp al, 'e'
    je inc_count
    cmp al, 'i'
