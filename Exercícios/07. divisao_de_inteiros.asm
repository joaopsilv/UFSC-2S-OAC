.text
	li $t0, 32
	li $t1, 5
	div $t0, $t1
	srl $s0, $t0, 4 # Dividir por 2^n
	
	mflo $s1 # Parte inteira em $s1
	mfhi $s2 # Resto em %s1

	li $v0, 1
	move $a0, $s0
	syscall

	li $v0, 10
	syscall