#int a = 10;
#int b = 15;
#int c = 7; 
#char d = ‘a’; 
 
#if ( a<b && c!=0 && d == ‘a’ ) e = 1;
.data
	a: .word 10
	b: .word 15
	c: .word 7
	d: .byte 'a'
.text
	lw $t0, a # carrega a
	lw $t1, b  # carrega b
	lw $t2, c  # carrega c
	lb $t3, d # carrega d
	
	bgt $t0, $t1, exit
	beq $t2, $zero, exit
	bne $t3, 'a', exit
	
	li $t4, 1 # Representar o e = 1
	li $v0, 1 # Preparar para print
	add, $a0, $t4, $zero
	syscall
	
	 exit:
	 	li $v0, 10
	 	syscall