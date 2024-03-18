.data
	msg_pedido: .asciiz "Informe um número decimal:  "
	zero: .float  0.0

.text
	li $v0, 4
	la $a0, msg_pedido
	syscall

	li $v0, 6 # Instrução p/ ler float, valor lido fica em $f0
	syscall

	lwc1 $f1, zero
	add.s $f12, $f1, $f0 # Valor de f1 passado para f12, uma necessidade para impressão
	
	li $v0, 2 # Instrução p/ imprimir float
	syscall