.data
	msg_a: .asciiz "Informe A: "
	msg_b: .asciiz "Informe B: "

.text
	# Processo para obter A em $s1
	li $v0, 4
	la $a0, msg_a
	syscall
	li $v0, 5
	syscall
	move $s1, $v0
	
	# Processo para obter B em $s2
	li $v0, 4
	la $a0, msg_b
	syscall
	li $v0, 5
	syscall
	move $s2, $v0

	# Resposta oficialmente é apenas a partir daqui
	equacao:
		add $s0, $s1, $s2	# $s0 = A + B
		sub $s3, $s1, $s2	# $s3 = A - B
		mul $s5, $s0, $s3	# $s5 = (A + B) x (A - B)
		sll $s4, $s5, 2		# Y($s4) = 2^2 x ((A + B) x (A - B))