.data
	caractere: .byte, 'X'

.text
	li $v0, 4 # Instrução p/ imprimir string
	la $a0, caractere
	syscall

	li $v0, 10
	syscall