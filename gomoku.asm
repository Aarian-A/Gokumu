.data
row:		.asciiz "_"
disrow:		.asciiz "\n-----+-----+-----\n"
sep:		.asciiz " | "

x:		.asciiz "  X "
o:		.asciiz "  O "
empty:		.asciiz "    "
col:	     .asciiz "01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19\n"
rowA:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowB:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowC:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowD:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowE:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowF:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowG:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowH:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowI:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowJ:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowK:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowL:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowM:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowN:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowO:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowP:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowQ:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowR:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
rowS:	     .asciiz "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"

newLine: "\n"

rA: .asciiz "A "
rB: .asciiz "B "
rC: .asciiz "C "
rD: .asciiz "D "
rE: .asciiz "E "
rF: .asciiz "F "
rG: .asciiz "G "
rH: .asciiz "H "
rI: .asciiz "I "
rJ: .asciiz "J "
rK: .asciiz "K "
rL: .asciiz "L "
rM: .asciiz "M "
rN: .asciiz "N "
rO: .asciiz "O "
rP: .asciiz "P "
rQ: .asciiz "Q "
rR: .asciiz "R "
rS: .asciiz "S "



.word

welcome:	.asciiz "Welcome to Gomuku!\n==================\n"
explain:	.asciiz "The board numbering is as follows.  Play in a cell by typing in the cell number.\n\n"
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
	
	jal displayGrid
	
	li $v0, 10
	syscall  			#terminate program

#display grid
displayGrid: 

	li $v0, 4
	la $a0, col
	syscall
	
	li $v0, 4
	la $a0, rowA
	syscall
	
	li $v0, 4
	la $a0, rowB
	syscall	
	
	li $v0, 4
	la $a0, rowC
	syscall
	
	li $v0, 4
	la $a0, rowD
	syscall
	
	li $v0, 4
	la $a0, rowE
	syscall
	
	li $v0, 4
	la $a0, rowF
	syscall
	
	li $v0, 4
	la $a0, rowG
	syscall
	
	li $v0, 4
	la $a0, rowH
	syscall	
	
	li $v0, 4
	la $a0, rowI
	syscall
	
	li $v0, 4
	la $a0, rowJ
	syscall	
	
	li $v0, 4
	la $a0, rowK
	syscall
	
	li $v0, 4
	la $a0, rowL
	syscall
	
	li $v0, 4
	la $a0, rowM
	syscall
	
	li $v0, 4
	la $a0, rowN
	syscall	
	
	li $v0, 4
	la $a0, rowO
	syscall
	
	li $v0, 4
	la $a0, rowP
	syscall			
		
	li $v0, 4
	la $a0, rowQ
	syscall
	
	li $v0, 4
	la $a0, rowR
	syscall	
	
	li $v0, 4
	la $a0, rowS
	syscall
	
	jr $ra																											#display grid by pointing to the subroutine


grid: 
	li $v0, 4
	la $a0, col
	syscall	
	
	




