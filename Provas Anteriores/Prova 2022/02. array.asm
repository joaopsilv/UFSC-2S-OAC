.text
	addi $t2, $zero, 16
	mul $t3, $s1, $t2	# 16*a
	add $t4, $t3, $s2	# 16*a + b
	
	add $t5, $t0, $t1	# i+j
	
	sw $t4, vet($t5)	# vet[i+j] = 16*a + b