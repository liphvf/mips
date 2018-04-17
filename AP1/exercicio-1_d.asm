.data
	a: .word 0
	b: .word 15
.text
	lw $t1, a # carrega a
	lw $t2, b # Carrega b
	li $t3, 0 # Declara i
	li $t4, 5 # Condicao de parado do for
	
	bge $t3, $t4, endfor
	
	for:
		addi $t3, $t3, 1 # incrementa
		add $t1, $t1, $t2 # a = a + b;
		blt $t3, $t4, for
	
	endfor:
		li $v0, 1
		add $a0, $t1, $zero
		syscall