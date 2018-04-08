#int x = 5; 
#int y = 4; 

#? = 5?^2 + 3? + 6 

li $s1, 5 # valor de x
li $s2, 4 # valor de y

li $t0, 5 #Parte 5 da operação
li $t1, 3 # Parte 3 da operação
li $t2, 6, # parte 6  da operação


mul $s1, $s1, $s1 # x^2 e salvando em $s1
mul $s1, $s1,$t0 # 5(resultando de x^2) e salvando em $s1

mul $s2, $s2, $t1 # 3y e salvando em $s2

add $s3, $s1, $s2 # Somando  5?2 + 3?
add $s3, $s3, $t2 # Somando (5?2 + 3?) + 6

move $a0, $s3 # colocando em $a0 para imprimir

li  $v0, 1      #código de print_int

syscall

li $v0, 10


syscall