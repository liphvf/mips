.data
	a: .word 5
	b: .word 3
.text
	lw $t1, a
	lw $t2, b
	li $t3, 0 # Indice do for
	li $s0, 0

	for:
		bge  $t3, $t2, exit 
		add $s0, $s0, $t1 

		addi $t3, $t3, 1 # incrementa 
		j for
		
	exit:
		# Imprime o numero
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		
		#exit
		li $v0, 10
		syscall