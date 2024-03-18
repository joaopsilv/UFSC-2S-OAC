.data
	msg_pergunta: .asciiz "Qual é o seu nome? "
	msg_saudacao: .asciiz "Olá, "
	nome: .space 25

.text
	li $v0, 4 # Instrução p/ imprimir string
	la $a0, msg_pergunta
	syscall

	li $v0, 8 # Instrução p/ ler string
	la $a0, nome
	la $a1, 25
	syscall
	
	li $v0, 4 # Instrução p/ imprimir string
	la $a0, msg_saudacao
	syscall

	li $v0, 4 # Instrução p/ imprimir string
	la $a0, nome
	syscall