.text
main:   lui $9, 0x1001 # endere�o inicial da mem�ria
        addi $8, $0, 8192 # pixeliza��o total da tela
        #addi $2, $0, 42 # gera um n�mero aleat�rio
        addi $17, $0, 0x00000000 # 0x0000ff32; 0x00ff0033; 0x0000c832
        addi $18, $0, 0x0000c832 # colora��o do ch�o
        addi $11, $0, 3072 # limite do c�u

sky:	beq $8, $11, base # la�o para 'pintar' a tela
        sw $17, 0($9) # adiciona a cor na tela
        sw $17, 32768($9) # replica a cor da tela
        addi $9, $9, 4 # incrementa o endere�o
        addi $8, $8, -1 # diminui o valor do contador
        j sky # retorna para a linha inicial do la�o

base:	beq $8, $0, stars # la�o para 'pintar' o ch�o
        sw $18, 0($9) # adiciona a cor na tela
        sw $18, 32768($9) # replica a cor da tela
        addi $9, $9, 4 # incrementa o endere�o
        addi $8, $8, -1 # diminui o valor do contador
        j base # retorna para a linha inicial do la�o
        
stars:  lui $9, 0x1001 # endere�o inicial da mem�ria
        addi $8, $0, 8192 # pixeliza��o total da tela
        addi $11, $0, 4096 # limite das estrelas
        addi $13, $0, 0x00ffffff # cor branca das estrelas
        addi $14, $0, 0 # zerando o contador
        addi $2, $0, 42 # instru��o para gerar cor aleat�ria
        addi $5, $0, 0x00ffffff # define o intervalo a ser gerado
        
forStr: beq $8, $11, hills # la�o para pintar as estrelas
	bne $14, 200, cont # alterna a cada 200
	syscall # chamada do sistema
        sw $4, 0($9) # adiciona a cor na tela
        sw $4, 32768($9) # replica a cor da tela
        addi $14, $0, 0 # zerando o contador de alternancia
        
cont:   addi $9, $9, 4 # incrementa o endere�o
        addi $8, $8, -1 # diminui o valor do contador
        addi $14, $14, 1 # incremento no contador
        j forStr # retorna para a linha inicial do la�o
        
hills:	lui $9, 0x1001 # endere�o inicial da mem�ria
	addi $9, $9, 10240
        addi $8, $0, 3072 # pixeliza��o total das montanhas
        #addi $11, $0, 4096 # limite das estrelas
        addi $13, $0, 0x001515d1 # cor branca das estrelas
        #addi $14, $0, 0 # zerando o contador
	
forHill:beq $8, $0, fim
	sw $13, 0($9)
	sw $13, 32768($9)
	addi $9, $9, 4
	addi $8, $8, -1
	j forHill

# algoritmo para passar o tempo
sleept:  addi $20, $0, 300000
forST:   beq $20, $0, fimST
         nop
         addi $20, $20, -1        
         j forST  
fimST:   jr $31

        
fim:	addi $2, $0, 10
	syscall
