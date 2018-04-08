.data
	string: .asciiz "Arquitetura de Computadores"
	caracter: .byte 'e'  
.text
	li $t1, 0 # Contador
	la $s0, 0 # indice base para interar
	lb $s2, caracter # carater para comprar

	for:
		lb $s1, string($s0) # carrega o valor desta posio do array
		addi $s0, $s0, 1 # incrementa em 1 byte
		beq $s1, $zero, emprime_exit 
		beq $s1, $s2, contar
		j for
	
	contar:
		add $t1, $t1, 1
		j for		
	emprime_exit:
		li $v0, 1
		add $a0, $t1, $zero
		syscall