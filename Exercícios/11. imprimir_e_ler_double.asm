.data
	msg_pedido: .asciiz "Informe um n�mero decimal:  "
	zero: .double  0.0

.text
	li $v0, 4
	la $a0, msg_pedido
	syscall

	li $v0, 7 # Instru��o p/ ler double at, valor lido fica em $f0
	syscall

	ldc1 $f2, zero
	add.d $f12, $f2, $f0 # Valor de f1 passado para f12, uma necessidade para impress�o
	
	li $v0, 3 # Instru��o p/ imprimir double
	syscall
	
	# Doubles usam registradores pares, isso porque ocupam dois ao mesmo tempo.