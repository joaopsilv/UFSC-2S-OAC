.data
	msg_saudacao: .asciiz "Olá. Informe sua idade: "
	msg_resposta: .asciiz "Sua idade é: "

.text
	li $v0, 4 # Instrução p/ imprimir string
	la $a0, msg_saudacao
	syscall

	li $v0, 5 # Instrução p/ ler inteiro
	syscall

	move $t0, $v0

	li $v0, 4 # Instrução p/ imprimir string
	la $a0, msg_resposta
	syscall
	
	
	li $v0, 1
	move $a0, $t0
	syscall