.text
main:   lui $9, 0x1001 # endereço inicial da memória
        addi $8, $0, 8192 #pixelização total da tela
        addi $5, $0, 0x00ffffff # 
        #addi $2, $0, 42 # gera um número aleatório
        addi $17, $0, 0x00000000 # 0x0000ff32; 0x00ff0033; 0x0000c832
        addi $18, $0, 0x0000c832
        addi $11, $0, 3072

ceu:	beq $8, $11, chao # laço para 'pintar' a tela
        sw $17, 0($9) # adiciona a cor na tela
        sw $17, 32768($9) # replica a cor da tela
        addi $9, $9, 4 # incrementa o endereço
        addi $8, $8, -1 # diminui o valor do contador
        j ceu # retorna para a linha inicial do laço

chao:	beq $8, $0, stars # laço para 'pintar' o chão
        sw $18, 0($9) # adiciona a cor na tela
        addi $9, $9, 4 # incrementa o endereço
        addi $8, $8, -1 # diminui o valor do contador
        j chao # retorna para a linha inicial do laço
        
stars:  lui $9, 0x1001 # endereço inicial da memória
        addi $8, $0, 8192 #pixelização total da tela
        addi $11, $0, 4096
        addi $13, $0, 0x00ffffff # cor branca das estrelas
        addi $14, $0, 0 # zerando o contador
        addi $2, $0, 42 # instrução para gerar cor aleatória
        
print:  beq $8, $11, fim
	bne $14, 200, cont
	syscall
        sw $4, 0($9) # adiciona a cor na tela
        sw $4, 32768($9) # replica a cor da tela
        addi $14, $0, 0
        
cont:   addi $9, $9, 4 # incrementa o endereço
        addi $8, $8, -1 # diminui o valor do contador
        addi $14, $14, 1 # incremento no contador
        j print # retorna para a linha inicial do laço
        
# algoritmo para passar o tempo
sleept:  addi $20, $0, 300000
forST:   beq $20, $0, fimST
         nop
         addi $20, $20, -1        
         j forST  
fimST:   jr $31

        
fim:	addi $2, $0, 10
	syscall
