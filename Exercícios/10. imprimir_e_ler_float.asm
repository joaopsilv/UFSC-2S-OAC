.data
	msg_pedido: .asciiz "Informe um n�mero decimal:  "
	zero: .float  0.0

.text
	li $v0, 4
	la $a0, msg_pedido
	syscall

	li $v0, 6 # Instru��o p/ ler float, valor lido fica em $f0
	syscall

	lwc1 $f1, zero
	add.s $f12, $f1, $f0 # Valor de f1 passado para f12, uma necessidade para impress�o
	
	li $v0, 2 # Instru��o p/ imprimir float
	syscall