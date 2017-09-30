# Program File: 5-calculations.asm
# Author: Dickson Wong
# Date: Sept 30, 2017
# Prompts user for integers to calculate various results
.text
main:
	# prompt user for integers to add and gets them
	li $v0, 4
	la $a0, firstIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, sum
	syscall
	
	li $v0, 5
	syscall
	add $t0, $zero, $v0
	
	li $v0, 4
	la $a0, secondIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, sum
	syscall
	
	li $v0, 5
	syscall
	add $t0, $t0, $v0
	
	# output the sum 
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	# prompt user for integers to subtract
	li $v0, 4
	la $a0, firstIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, difference
	syscall
	
	li $v0, 5
	syscall
	add $t0, $zero, $v0
	
	li $v0, 4
	la $a0, secondIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, difference
	syscall
	
	li $v0, 5
	syscall
	sub $t0, $t0, $v0
	
	# output the difference 
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	# prompt user for integers to multiply and gets them
	li $v0, 4
	la $a0, firstIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, product
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, secondIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, product
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	# output the product 
	mult $t0, $t1
	
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 1
	mfhi $a0
	syscall
	
	li $v0, 4
	la $a0, space
	syscall
	
	li $v0, 1
	mflo $a0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	# prompt user for integers to divide and gets them
	li $v0, 4
	la $a0, firstIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, division
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, secondIntegerPrompt
	syscall
	
	li $v0, 4
	la $a0, division
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	# output the division 
	div $t0, $t1
	
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 1
	mfhi $a0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 1
	mflo $a0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	# halt
	li $v0, 10
	syscall
.data
firstIntegerPrompt: .asciiz "Please enter the first integer to include in the "
secondIntegerPrompt: .asciiz "Please enter the second integer to include in the "
sum: .asciiz "sum: "
difference: .asciiz "difference: "
product: .asciiz "product: "
division: .asciiz "division: "
output: .asciiz "The result is: "
newline: .asciiz "\n"
space: .asciiz " "