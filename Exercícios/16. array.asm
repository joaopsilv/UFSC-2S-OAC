.data
	myArray:
		.align 2  # Alinha palavra na posição correta
		.space 16 # Array de 4 elementos inteiros

.text
	move $t0, $zero # Indice do array
	move $t1, $zero # Valor a ser colocado no array
	li $t2, 16 # Tamanho do array
		
	loop:
		beq $t0, $t2, out_loop
		sw $t1, myArray($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j loop
	
	out_loop:
		move $t0, $zero
		print:
			beq $t0, $t2, out_print
			li $v0, 1
			lw $a0, myArray($t0)
			syscall
			addi $t0, $t0, 4
			j print
	
	out_print:
		li $v0, 10
		syscall
