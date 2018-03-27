.data 
	nome: .asciiz  "Filiphe Vilasr Figueiredo" 
.text
	li $v0, 4 # Estou carregando o valor quatro em $v0 para imprimir nome
	la $a0, nome # diz o que vai ser printado
	syscall # chama o sisterma para printar