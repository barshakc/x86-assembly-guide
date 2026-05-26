# Program Structure

An x86-64 assembly program is divided into sections. Each section serves a specific purpose and helps organize data and instructions.

---

## Sections Overview

- `.data` → initialized data  
- `.bss`  → uninitialized data  
- `.text` → program instructions  

---

## 1. .data Section

The `.data` section is used to store initialized values such as strings and constants.

### Example

```asm
section .data
msg db "Hello, World!", 0xA
len equ $ - msg
```

### Explanation

- msg → label (name of the data)
- db → define bytes
- "Hello, World!" → string
- 0xA → newline character
- len equ $ - msg → calculates length of the string.

## 2. .bss Section

The .bss section is used to reserve memory for variables without initializing them.

### Example

```asm
section .bss
buffer resb 100
```

### Explanation

- buffer → variable name
- resb 100 → reserve 100 bytes of memory

## 3. .text Section

The .text section contains the actual program instructions.

### Example

```asm
section .text
global _start

_start:
```

### Explanation

- global _start → makes _start visible to the linker
- _start → entry point of the program
- execution begins from this label

## Full Example

```
section .data
    msg db "Hello", 0xA
    len equ $ - msg

section .bss
    buffer resb 100

section .text
    global _start

_start:
    ; write message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
```

## Notes

- Sections organize data and instructions clearly
- Execution always starts from _start
- .data and .bss are optional but commonly used
- .text is required for program logic

