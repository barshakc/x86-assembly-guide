# System Calls

Assembly programs do not have built-in functions for input or output.  
To interact with the operating system (e.g., print text or read input), they use **system calls**.

---

## What is a System Call?

A system call is a request made by a program to the operating system.

It is used for operations such as:
- reading input  
- writing output  
- exiting a program  

---

## How System Calls Work

In x86-64 Linux, system calls are made using the `syscall` instruction.

Before calling `syscall`, specific registers must be set:

- **RAX** → system call number  
- **RDI** → first argument  
- **RSI** → second argument  
- **RDX** → third argument  

---

## Common System Calls

| Operation | System Call | RAX Value |
|----------|------------|----------|
| read     | sys_read   | 0        |
| write    | sys_write  | 1        |
| exit     | sys_exit   | 60       |

---

## Writing Output (sys_write)

### Example

```asm
mov rax, 1      ; sys_write
mov rdi, 1      ; file descriptor (1 = stdout)
mov rsi, msg    ; address of message
mov rdx, len    ; number of bytes
syscall
```

### Explanation

- rax = 1 → write operation
- rdi = 1 → output to terminal
- rsi → message location
- rdx → message length

## Reading Input (sys_read)

### Example

```asm
mov rax, 0      ; sys_read
mov rdi, 0      ; file descriptor (0 = stdin)
mov rsi, buffer ; where input is stored
mov rdx, 100    ; maximum bytes to read
syscall
```

### Explanation

- rax = 0 → read operation
- rdi = 0 → input from keyboard
- rsi → buffer
- rdx → number of bytes to read

## Exiting a Program (sys_exit)

### Example

```asm
mov rax, 60     ; sys_exit
mov rdi, 0      ; exit status
```

### Explanation

- rax = 60 → exit program
- rdi = 0 → return value (0 = success)

## Notes

- System calls allow assembly programs to interact with the OS
- All input/output operations require system calls
- Arguments are passed through registers
- syscall executes the requested operation