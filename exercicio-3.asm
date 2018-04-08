.data
	string: .asciiz "Arquitetura de Computadores"
	caracter: .byte 'e'  
.text
	li $t2, 4 # Fim
	li $t3, 1 # Iterador do for (pode ser considero o inicio, visto que ele define o range)
	la $s0, 4 # Iterador de posicao do array
	li $s2, 0 # Somador
	
	bgt $t3, $t2, emprime_exit
	
	for:
		add $t3, $t3, 1 # intera o for
		lw $s1, array($s0) # carrega o valor desta posi??o do array
		add $s2, $s2, $s1 # Soma
		addi $s0, $s0, 4 # incrementa o interador do array
		
		ble $t3, $t2, for
			
	emprime_exit:
		li $v0, 1
		add $a0, $s2, $zero
		syscall