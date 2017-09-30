# Program File: 2.prompt_user.asm
# Author: Dickson Wong
# Date: Sept 30, 2017
# Prompts user for integer and prints it back
.text
main:
	li $v0, 4 		# loads syscall "print string"
	la $a0, prompt	# loads argument prompt 
	syscall		# prompts user for integer
	
	li $v0, 5		# loads syscall "read integer"
	syscall		# reads integer from user into $v0
	move $s0, $v0	# moves integer at $v0 into $s0
	
	li $v0, 4		# syscall "print string"
	la $a0, output	# loads argument output
	syscall
	
	move $a0, $s0	# moves the integer at $s0 into $a0
	li $v0, 1		# loads syscall "print integer"
	syscall		# prints integer at $a0
	
	li $v0, 10		# loads syscall "halt program"
	syscall
	
	

.data
prompt: .asciiz "Please enter an integer: "
output: .asciiz "You entered the integer: "