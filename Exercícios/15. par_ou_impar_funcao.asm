.data
	msg_numero: .asciiz "Informe um n�mero: "
	msg_par: .asciiz "O n�mero � par"
	msg_impar: .asciiz "O n�mero � �mpar"

.text
	.main:
		la $a0, msg_numero
		jal imprimeString
		jal leInteiro
		
		move $a0, $v0
		jal ehImpar
		beq $v0, $zero, imprimePar
		la $a0, msg_impar
		jal imprimeString
		jal encerraPrograma

	imprimePar:
		la $a0, msg_par
		jal imprimeString
		jal encerraPrograma

	# Retorna 1 se for �mpar, 0 se for par
	ehImpar:
		li $t0, 2
		div $a0, $t0

		mfhi $v0
		jr $ra
	
	encerraPrograma:
		li $v0, 10
		syscall
	
	imprimeString:
		li $v0, 4
		syscall
		jr $ra

	leInteiro:
		li $v0, 5
		syscall
		jr $ra