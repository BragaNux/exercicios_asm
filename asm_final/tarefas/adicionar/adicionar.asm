section .data
	newline db 10

section .bss
	buffer resb 1

section .text
	global _start

_start:
	mov rcx, 2
	mov rdx, 3

	add rcx, rdx

	mov rax, rcx
	add rax, '0'
	mov [buffer], al

	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 1
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

