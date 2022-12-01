.data
row:		.asciiz "_"

x:		.asciiz "  X "
o:		.asciiz "  O "
empty:		.asciiz "    "
col:	     .asciiz " 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19\n"
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

string: .asciiz "What is your move?\n"		#holds string entered by user input
error: .asciiz "Illegal move\n" 		#outputs error message
array: .space 5

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
	
	jal displayGrid
	
	
	jal userInput
	
		
	li $v0, 10
	syscall  			#terminate program


#display grid
displayGrid: 

	li $v0, 4
	la $a0, col
	syscall
	
	li $v0, 4
	la $a0, rA
	syscall
	
	li $v0, 4
	la $a0, rowA
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rB
	syscall
	
	li $v0, 4
	la $a0, rowB
	syscall	
	
	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 4
	la $a0, rC
	syscall
	
	li $v0, 4
	la $a0, rowC
	syscall

	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rD
	syscall
	
	li $v0, 4
	la $a0, rowD
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rE
	syscall
	
	li $v0, 4
	la $a0, rowE
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rF
	syscall
	
	li $v0, 4
	la $a0, rowF
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rG
	syscall
	
	li $v0, 4
	la $a0, rowG
	syscall

	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rH
	syscall
	
	li $v0, 4
	la $a0, rowH
	syscall	
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rI
	syscall
	
	li $v0, 4
	la $a0, rowI
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rJ
	syscall
	
	li $v0, 4
	la $a0, rowJ
	syscall	

	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 4
	la $a0, rK
	syscall
	
	li $v0, 4
	la $a0, rowK
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rL
	syscall
	
	li $v0, 4
	la $a0, rowL
	syscall

	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 4
	la $a0, rM
	syscall
	
	li $v0, 4
	la $a0, rowM
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rN
	syscall	

	li $v0, 4
	la $a0, rowN
	syscall	
	
	li $v0, 4
	la $a0, newLine
	syscall

	li $v0, 4
	la $a0, rO
	syscall
	
	li $v0, 4
	la $a0, rowO
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rP
	syscall	

	li $v0, 4
	la $a0, rowP
	syscall	
	
	li $v0, 4
	la $a0, newLine
	syscall		
		
	li $v0, 4
	la $a0, rQ
	syscall
		
	li $v0, 4
	la $a0, rowQ
	syscall

	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rR
	syscall

	li $v0, 4
	la $a0, rowR
	syscall	
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	li $v0, 4
	la $a0, rS
	syscall
	
	li $v0, 4
	la $a0, rowS
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	jr $ra																											#display grid by pointing to the subroutine

	
userInput:
	#prompts user to enter their moves
	li $v0, 4
	la $a0, string
	syscall
	
	#store string 
	li $v0, 8
	la $a0, array	#store input here
	li $a1 5	#read in this many characters max
	syscall
	
	convert:
		lbu $t0, ($a0) #load first bit letter e.g 'A'
		#addi $a0, $a0, 1 # advance through array
		
	convertTwo:
		lbu $t1, 1($a0) #load second bit number e.g '1'
		#addi $a0, $a0, 1
		
	convertThree:
		#addi $a0, $a0, 1  #advance through array
		lbu $t2, 2($a0) # load 3rd bit number e.g '1'
		
	conditonOne:
	
		blt $t0, 'A', printError		#if int < A, print error message
		bgt $t0, 'T', printError		#of int > T, print error message
		
	conditionTwo:
		blt $t1, '1', printError		#if int < 1, print error message
		bgt $t1, '9', printError		#if int > 9, print error message
		
	conditionThree:
		beq $t2, '\n', exit			# if third bit is \n there is no third bit and it's only 2 bits e.g A1
		bne $t1, '1', printError		#if second bit doesnt equal to 1, exit because number cant be e.g 21 must be 10-19 if third bit
		blt $t2, '1', printError		#if int < 1, print error message
		bgt $t2, '9', printError		#if int > 9, print error message
		
	exit: # exits program
		li $v0, 10
		syscall
		
	#displays error and loops back to prompt user for their move
	printError:
		li $v0, 4
		la $a0, error
		syscall
		j main




