# x86-assembly-guide

A practical guide to x86-64 assembly with explanations and runnable examples using NASM.

---

##  Quick Start

```bash
nasm -f elf64 examples/hello_world.asm
ld hello_world.o -o hello
./hello
``

## 🧠 Overview

This repository focuses on the core building blocks of x86-64 assembly programming:

- Understanding registers
- Recognizing program structure
- Using system calls for input/output
- Writing and running simple assembly programs

Each concept is explained clearly and paired with working code.

## ⚙️ Requirements

NASM (Netwide Assembler)
Linux environment or WSL

## 🔧 Build and Run

```bash
nasm -f elf64 file.asm
ld file.o -o file
./file
``
## 📌 Notes

Examples are intentionally minimal and focused
Each program demonstrates a specific concept
There is no abstraction — everything maps directly to system-level behavior