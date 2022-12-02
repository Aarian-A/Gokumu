.data

string: .asciiz "What is your move?\n"		#holds string entered by user input
error: .asciiz "Illegal move\n" 		#outputs error message
array: .space 5

.text 
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
		
	exit:
		jr $ra  				#return to the address of the instruction
		
	#displays error and loops back to prompt user for their move
	printError:
		li $v0, 4
		la $a0, error
		syscall
		j userInput
