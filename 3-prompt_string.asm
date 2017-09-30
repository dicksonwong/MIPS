# Program File: 3-prompt_string.asm
# Author: Dickson Wong
# Date: Sept 30, 2017
# Prompts user for string and prints it back
.text
main:
	# Prompts user for a string
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Prints the number of characters user can input at most
	li $v0, 1
	lw $a0, inputSize	#load the word at inputsize into $a0
	syscall	
	
	# prints new line
	li $v0, 4
	la $a0, newline
	syscall
	
	# gets string from user
	li $v0, 8
	la $a0, input
	la $a1, inputSize
	syscall
	
	# output string user inputted
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 4
	la $a0, input
	syscall
	
	# halt
	li $v0, 10
	syscall

.data
input: .space 81		# allocates 81 bytes for an input - the last byte is for endline char
inputSize: .word 80		# allocates 4 bytes for the size of input - in this case 80
prompt: .asciiz "Enter a string that is less than the number of characters specified: "
output: .asciiz "The string you entered was:\n"
newline: .asciiz "\n"