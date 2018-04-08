.data
	a: .word 10
.text
	lw $t1, a # Carregando a
	li $t2, 0 # Declarando b
	
	blt $t1, $zero, else
	
	addi $t2, $t1, 10
	
	j imprime_exit
	
	else:
		addi $t2, $t1, -10
		
	imprime_exit:
		li $v0, 1 # preparando para print
	
		add $a0, $t2, $zero # Copiando valor de t2 para a0
	
		syscall
	
		li $v0, 10 # exit program
	
		syscall # chama o exit			
