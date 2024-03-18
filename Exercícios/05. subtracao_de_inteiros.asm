.text
	li $t0, 75
	li $t1, 25
	sub $s0, $t0, $t1
	subi $s1, $s0, 25
	
	li $v0, 1
    	move $a0, $s1
    	syscall

	li $v0, 10
	syscall