#!/bin/bash

nasm -f elf64 tarefas/"$1/$2".asm -o && \
ld bin/"$2".o -o bin/"$2" && \
bin/"$2"
