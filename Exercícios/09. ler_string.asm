.data
	msg_pergunta: .asciiz "Qual � o seu nome? "
	msg_saudacao: .asciiz "Ol�, "
	nome: .space 25

.text
	li $v0, 4 # Instru��o p/ imprimir string
	la $a0, msg_pergunta
	syscall

	li $v0, 8 # Instru��o p/ ler string
	la $a0, nome
	la $a1, 25
	syscall
	
	li $v0, 4 # Instru��o p/ imprimir string
	la $a0, msg_saudacao
	syscall

	li $v0, 4 # Instru��o p/ imprimir string
	la $a0, nome
	syscall