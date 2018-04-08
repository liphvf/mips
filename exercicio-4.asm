.data
	vec1: .word 1,12,35,473,2,32,4
	vec2: .word 0,3,12,32,3,4,9
.text
	li $s5, 0 # indice For
	la $s0, 0 # indice base para interar
	li $s6, 6 # carater para comprar

	for:
		lw $s1, vec1($s0) # carrega o valor desta posio do array
		lw $s2, vec2($s0) # carrega o valor desta posio do array

		add $t3, $s1, $s2 #Soma
		
		sw $t3, vec1($s0) # salva na memoria

		lw $s1, vec1($s0) # carrega de novo 
		# Imprime o numero
		li $v0, 1
		add $a0, $s1, $zero
		syscall
		
		# Imperime espaco
		li $v0, 11
		li $a0, ' '
		syscall
		
		bge $s5, $s6, exit 
		  
		addi $s5, $s5, 1 # incrementa 
		addi $s0, $s0, 4 # incrementa em 1 byte
		j for
		
	exit:
		li $v0, 10
		syscall