# Program File: 2-1.asm
# Dickson Wong
# Hello World
.text
main:
	li $v0, 4	# loads immediately "print string" syscall
	la $a0, hello	# loads into a0 (argument used by syscall "print string") what is stored at "hello"
	syscall	# system call - calls service stored in $v0, which then determines which arguments to use 
		# -in this case, uses argument $a0
	li $v0, 10	# loads immediately "halt" syscall
	syscall	# syscall "halt"
.data:
hello: .asciiz "Hello World"	# the string we want to print