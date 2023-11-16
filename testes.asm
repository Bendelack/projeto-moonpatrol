.text
main: 	addi $v0, $zero, 31
	syscall
	
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, 500
	addi $v0, $zero, 32
	syscall
	
	addi $v0, $zero, 41
	syscall
	
	addi $v0, $zero, 1
	syscall
	
	addi $v0, $zero, 10
	syscall