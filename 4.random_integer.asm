# 4.random_integer.asm
# Author; Dickson Wong
# Date: Sept 31, 2017
# Random integer between 0 and 100
main:
	# greet user
	li $v0, 4
	la $a0, greeting
	syscall
	
	# choose random integer
	li $v0, 42
	li $a0, 0	# 0 rng seed
	lw $a1, range
	syscall	# random int is stored in $a0
	
	# print integer
	li $v0, 1
	syscall	# int already in $a0
	
	# halt
	li $v0, 10
	syscall
.data
greeting: .asciiz "I will choose an random int between 0 and 1000. It is: \n"
range: .word 1000 	# range of random int 

