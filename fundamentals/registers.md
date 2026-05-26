# Registers

Registers are small, fast storage locations inside the CPU used to hold data during execution.

They are used to:
- store temporary values  
- perform calculations  
- pass arguments to system calls  

---

## General Purpose Registers (x86-64)

The main registers used in x86-64 are:

- **RAX** — accumulator (used in arithmetic operations and system calls)  
- **RBX** — general-purpose register  
- **RCX** — counter (used in loops and shifts)  
- **RDX** — data register (used in arithmetic and I/O)  

- **RSP** — stack pointer (points to the top of the stack)  
- **RBP** — base pointer (used as a reference for the stack frame)  

- **RSI** — source index (used in memory operations)  
- **RDI** — destination index (used in memory operations)  

---

## Register Sizes

Each register can be accessed in different sizes:

| 64-bit | 32-bit | 16-bit | 8-bit |
|--------|--------|--------|------|
| RAX    | EAX    | AX     | AL   |
| RBX    | EBX    | BX     | BL   |
| RCX    | ECX    | CX     | CL   |
| RDX    | EDX    | DX     | DL   |

---

## Example

```asm
mov rax, 5       ; load value into rax
mov rbx, 3       ; load value into rbx
add rax, rbx     ; rax = rax + rbx (result = 8)
```

## Registers in System Calls

Registers are also used to pass arguments:

| REGISTER  | PURPOSE             |
|---------- | --------------------|
| RAX       | system call number  |
| RDI       | first argument      |
| RSI       | second argument     |
| RDX       | third argument      |

---

## Notes

Registers are much faster than memory
Most operations are performed using registers
Some registers have conventional roles, but can still be used generally
Proper register usage is essential for correct program behavior