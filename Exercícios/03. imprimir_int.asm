.data
	valor: .word 77

.text
	li $v0, 1 # Instrução p/ imprimir inteiro
	lw $a0, valor
	syscall

	li $v0, 10
	syscall