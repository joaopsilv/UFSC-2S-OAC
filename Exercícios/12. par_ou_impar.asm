.data
	msg_numero: .asciiz "Forneça um número: "
	msg_par: .asciiz "O número é par"
	msg_impar: .asciiz "O número é ímpar"

.text
	li $v0, 4
	la $a0, msg_numero
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 # Detém o resto da divisão por 2
	
	beq $t1, $zero, imprimePar
	
	li $v0, 4
	la $a0, msg_impar
	syscall
	
	li $v0, 10
	syscall
	
	imprimePar:
		li $v0, 4
		la $a0, msg_par
		syscall
