.data
	caractere: .byte, 'X'

.text
	li $v0, 4 # Instru��o p/ imprimir string
	la $a0, caractere
	syscall

	li $v0, 10
	syscall