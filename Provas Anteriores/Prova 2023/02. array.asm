.data
	vet:
		.align 2  	# Alinha palavra na posição correta
		.space 20 	# Array de 5 elementos inteiros
	a: 	.word 0

.text
	la $s0, vet
	lw $s1, a
	
	lw $t0, 16($s0)		# Carrega vet[4] em $t0
	mul $t1, $s1, 16	# 16*a
	add $t2, $t0, $t1	# vet[4] + 16*a
	
	sw $t2, 20($s0)		# Armazena $t2 em vet[5]