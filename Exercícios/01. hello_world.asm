.data
	msg: .asciiz "Ol�, mundo!"

.text
	li $v0, 4 # Instru��o p/ imprimir string
	la $a0, msg
	syscall # Executa

	li $v0, 10
	syscall