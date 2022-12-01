.data
row:		.asciiz "_"

x:		.asciiz "  X "
o:		.asciiz "  O "
empty:		.asciiz "    "

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
	
		
	li $v0, 10
	syscall  			#terminate program
	
.include "board.asm"
.include "userValidation.asm"




