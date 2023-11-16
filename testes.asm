.text
main: 	addi $a1, $zero, 10
	addi $v0, $zero, 42
	syscall
	
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, 1000
	addi $v0, $zero, 32
	syscall
	
	addi $v0, $zero, 42
	syscall
	
	addi $v0, $zero, 1
	syscall
	
	addi $v0, $zero, 10
	syscall