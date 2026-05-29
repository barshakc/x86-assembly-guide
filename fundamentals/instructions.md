# Instructions

Instructions are the commands executed by the CPU.

Each instruction tells the processor to perform a specific operation such as moving data, performing arithmetic, or making decisions.

In x86-64 assembly, instructions typically follow this format:

```asm
instruction destination, source
```

## Data Movement Instructions

These instructions move data between registers and memory.
mov

```asm
mov rax, 5      ; move value 5 into rax
mov rbx, rax    ; copy value from rax to rbx
```

- mov copies data (it does not delete the source)
- works between registers, memory, and immediate values

## Arithmetic Instructions


add
```asm
add rax, 3      ; rax = rax + 3
```

sub
```asm
sub rax, 2        ; rax = rax - 2
```

inc
```asm
inc rax           ; rax = rax + 1
```

dec
```asm
dec rax           ; rax = rax - 1
```

## Logical Instructions

and
```asm
and rax, rbx
```

or
```asm
or rax, rbx
```

xor
```asm
xor rax, rax      ; sets rax to 0
```

not
```asm
not rax           ; inverts all bits
```

## Comparison Instructions

cmp
The cmp instruction compares two values.
```asm
cmp rax, 5
```

## Control Flow (Decision Making)

### Conditional Jumps
Used after comparison:

```asm
cmp rax, 5
je equal        ; jump if equal
jne not_equal   ; jump if not equal
jl less         ; jump if less
jg greater      ; jump if greater
```

### Unconditional Jump

```asm
jmp label
```

##  Loops

```asm
mov rcx, 5

loop_start:
    ; instructions
    loop loop_start
```

Here, rcx is used as counter. loop runs until rcx = 0

