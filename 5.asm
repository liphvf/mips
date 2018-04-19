.data
	D: .word 1,2,3,4,5,6,7,8
.text
	li $t0, 10  # 10
	
	li $s0, 0 # a
	li $s1, 1 # b
	la $s2, D # D 
	
	li $s3, 4 # 4
		
	do:
		mul $t2, $s0, $s3 # multiplaca a * 4
		lw $t3, $t2($s2) # d[a]
		add $t4, $s0, $s1 # b+a
		la $t5, $t2($s2) # carrega d[a], endereç
		add $t5, $t4, $zero
		addi $s0, $s0, 1 # a+=1
		ble $s0, $t0, do		
	emprime_exit:
		li $v0, 1
		add $a0, $s2, $zero
		syscall
