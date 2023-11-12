.text
main:   lui $9, 0x1001 # endere�o inicial da mem�ria
        addi $8, $0, 8192 #pixeliza��o total da tela
        addi $5, $0, 0x00ffffff # 
        #addi $2, $0, 42 # gera um n�mero aleat�rio
        addi $17, $0, 0x00000032 #0x0000ff32; 0x00ff0033; 0x0000c832
        addi $18, $0, 0x0000c832
        addi $11, $0, 3072

ceu:	beq $8, $11, chao # la�o para 'pintar' a tela
        sw $17, 0($9) # adiciona a cor na tela
        sw $17, 32768($9) # replica a cor da tela
        addi $9, $9, 4 # incrementa o endere�o
        addi $8, $8, -1 # diminui o valor do contador
        j ceu # retorna para a linha inicial do la�o

chao:	beq $8, $0, fim
        sw $18, 0($9) # adiciona a cor na tela
        addi $9, $9, 4 # incrementa o endere�o
        addi $8, $8, -1 # diminui o valor do contador
        j chao # retorna para a linha inicial do la�o
        
fim:	addi $2, $0, 10
	syscall