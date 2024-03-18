.data
	msg_numero: .asciiz "Informe n: "

.text
	# Processo para obter n em $s3
	li $v0, 4
	la $a0, msg_numero
	syscall
	li $v0, 5
	syscall
	move $s3, $v0
	
	# Poderia estar omitido, os valores dos registradores já são 0
	move $s0, $zero		# Raiz($s0) = 0
	move $s1, $zero		# Soma($s1) = 0

	addi $s2, $zero, 1	# Ímpar($s2) = 1
	
	# Resposta oficialmente é apenas a partir daqui
	loop:
		bge $s1, $s3, out	# Se soma >= n go to out
		add $s1, $s0, $s2	# Soma = raiz + ímpar
		addi $s2, $s2, 2	# Ímpar = ímpar + 2
		addi $s0, $s0, 1	# Raiz = raiz + 1
		j loop
	
	out:
		li $v0, 10
		syscall