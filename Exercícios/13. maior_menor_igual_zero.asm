.data
	msg_maior: .asciiz "O número é maior que zero"
	msg_menor: .asciiz "O número é menor que zero"
	msg_igual: .asciiz "O número é igual a zero"

.text
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		li $v0, 4
		la $a0, msg_igual
		syscall
		
		li $v0, 10
		syscall
	
	imprimeMaior:
		li $v0, 4
		la $a0, msg_maior
		syscall

		li $v0, 10
		syscall
	
	imprimeMenor:
		li $v0, 4
		la $a0, msg_menor
		syscall