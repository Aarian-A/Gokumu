.data
row:		.asciiz "_"
empty:		.asciiz "    "
markX: 		.byte 'X' 

.word
welcome:	.asciiz "Welcome to Gomuku!\n==================\n"
explain:	.asciiz "The board numbering is as follows.\nPlay in a cell by typing in the cell number (Which is case sensitive!).\n\n"
youAre:		.asciiz "\nYou (the player) will play as O.\n\n"
cell:		.asciiz "Choose a cell to play in (Through rows A-O and columns 1-15): "
pAgain:		.asciiz "Play again (y or n)? "
cMove:		.asciiz "Computer's move.\n\n"
pMove:		.asciiz "Your move.\n"
cWin:		.asciiz "Way to lose.  I win!"
pWin:		.asciiz "Alright, whatever..  you win."
aTie:		.asciiz "Alright, so we tied.  Don't brag"
playAgain:	.asciiz "Would you like to play again (1=yes, 2=no)? "
nlnl:		.asciiz "\n\n"
nl:		.asciiz "\n"

.text
.globl main

main:
	li $v0, 4
	la $a0, welcome
	syscall				#display welcome message
		
	li $v0, 4
	la $a0, explain
	syscall				#display grid explanations
	
	jal displayGrid 		#From board.asm
	
	jal userInput			#From userValidation.asm
	
	li $a0, 1
	li $a1, 6
	jal findOffset
	
	move $t4, $v0
	
	#Replaces values of the array
	la $t1, rowA
	la $t3, markX
	li $t2, 'X'
	add $t1, $t1, $t4
	sb $t2, ($t1)
	
	
	
	
	
	
	
	

	
	jal displayGrid
		
	li $v0, 10
	syscall  			#terminate program
	
	

findOffset:
	#finding the offset to get to target index (stored in $t1) (using ROW  MAJOR formula)
	# $a0 = rowindex || $a1 = colIndex || $a2 = baseAddress
	
	li $t5, 54
	mult $a0, $t5			# rowIndex * colSize * 3
	mflo $t1			# 	   move from low reg 
	
	li $t6, 3			#          + colIndex * 3
	mult $a1, $t6
	mflo $t7
	
	add $t1, $t1, $t7		
	move $v0, $t1		        # returns the offset value
	
	jr $ra
	
	
	
	
	

	

.include "board.asm"
.include "userValidation.asm"



