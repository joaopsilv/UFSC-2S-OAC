.text
	li $t0, 75
	addi $t1, $zero, 25
	add $s0, $t0, $t1
	addi $s1, $s0, 25
	
	li $v0, 1
    	move $a0, $s1
    	syscall

	li $v0, 10
	syscall