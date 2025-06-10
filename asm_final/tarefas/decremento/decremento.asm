section .data

section .bss
	buffer resb 1

section .text
	global _start

_start:
	mov rcx, 0
	inc rcx
	inc rcx
	inc rcx
	inc rcx
	dec rcx
	dec rcx

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

