.data
	msg: .asciiz "Olá, mundo!"

.text
	li $v0, 4 # Instrução p/ imprimir string
	la $a0, msg
	syscall # Executa

	li $v0, 10
	syscall