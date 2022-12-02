.data
cWinMsg:		.asciiz "I win!"
pWinMsg:		.asciiz "Ugh...you win."
aTie:			.asciiz "We tied!?"

.text

compRandom:
    li $a1, 18  #Here you set $a1 to the max bound.
    li $v0, 42  #generates the random number.
    syscall
    move $t6, $v0
    
    
    li $a1, 18  #Here you set $a1 to the max bound.
    li $v0, 42  #generates the random number.
    syscall
    move $t8, $v0

equals:										#check same function
	beq $t3, $t4, eq1							# value is t3, t4, t5, t6, t7
	li $v0, 0									#we have to check all value is same
	jr $ra										#diffrent then return value 0
eq1:											#if same goto next compuare
	beq $t4, $t5, eq2
	li $v0, 0									#diffrent then return value 0
	jr $ra										#return to caller
eq2:
	beq $t5, $t6, eq3								#if same goto next compuare
	li $v0, 0									#diffrent then return value 0
	jr $ra										#return to caller
eq3:
	beq $t6, $t7, eq4								#if same goto next compuare
	li $v0, 0									#diffrent then return value 0
	jr $ra										#return to caller
eq4:
	li $t7, 'O'									#check not empty
	beq $t3, $t7, p1Win								#if same goto next compuare
	li $t7, 'X'									#check not empty
	beq $t3, $t7, cWin								#if same goto next compuare
	li $v0, 0									#diffrent then return value 0
	jr $ra
p1Win:
	li $v0, 4
	la $a0, pWinMsg 							#printing "Ugh...you win."
	syscall
	
	li $v0, 4
	la $a0, newLine								#new line \n print
	syscall
	li $v0, 1									#all same, return value is 1
	jr $ra	
cWin:
	li $v0, 4
	la $a0, cWinMsg 							#printing "Ugh...you win."
	syscall
	
	li $v0, 4
	la $a0, newLine								#new line \n print
	syscall
	li $v0, 1									#all same, return value is 1
	jr $ra