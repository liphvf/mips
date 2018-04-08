.data
	array: .word 1,12,35,473,2,32,4
.text
	li $t2, 6 # Fim
	li $t3, 0 # Iterador do for (pode ser considero o inicio, visto que ele define o range)
	la $s0, 0 # Iterador de posicao do array
	
	
	bgt $t3, $t2, emprime_exit
	
	for:
		add $t3, $t3, 1 # intera o for
		lw $s1, array($s0) # carrega o valor desta posição do array
		add $s2, $s2, $s1 # Soma
		addi $s0, $s0, 4 # incrementa o interador do array
		
		ble $t3, $t2, for
			
	emprime_exit:
		li $v0, 1
		add $a0, $s2, $zero
		syscall