.include "cenario.asm"
.text

main: 	lui $8, 0x1001
	addi $9, $0, 16384
	
for: 	beq $9, $0, stars
	lw $10, 0($8)
	sw $10, 0($8)
	sw $10, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j for
	
stars:  lui $9, 0x1001 # endereï¿½o inicial da memï¿½ria
        addi $8, $0, 2816 # pixelizaï¿½ï¿½o total da tela
        #addi $11, $0, 4096 # limite das estrelas
        #addi $13, $0, 0x00ffffff # cor branca das estrelas
        addi $14, $0, 0 # zerando o contador
        addi $2, $0, 42 # instruï¿½ï¿½o para gerar cor aleatï¿½ria
        addi $5, $0, 0x00ffffff # define o intervalo a ser gerado
        
forStr: beq $8, $0, vtnv1 # laï¿½o para pintar as estrelas
	bne $14, 200, cont # alterna a cada 200
	syscall # chamada do sistema
        sw $4, 0($9) # adiciona a cor na tela
        sw $4, 65536($9) # adiciona a cor na shadow
        #sw $4, 32768($9) # replica a cor da tela
        addi $14, $0, 0 # zerando o contador de alternancia
        
cont:   addi $9, $9, 4 # incrementa o endereï¿½o
        addi $8, $8, -1 # diminui o valor do contador
        addi $14, $14, 1 # incremento no contador
        j forStr # retorna para a linha inicial do laï¿½o
        
# vetor com as cores da nave 1
vtnv1:	lui $8, 0x1001
        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0xffffffff
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x010101
        sw $10, 131072($8)
        addi $8, $8, 4
        
# vetor com as cores do carro
vetorCarro:
        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4
        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00d07070
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

# vetor com as cores da buraco
vetorCratera:
        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x00302098
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

        addi $10, $0, 0x006d9951
        sw $10, 131072($8)
        addi $8, $8, 4

# press x to start the game
preGame:
	addi $a0, $0, 404
	addi $v0, $0, 32
	syscall
	jal pressXToStart
	syscall
	jal deletarPressXToStart	
	lui $s0, 0xffff # registrador que contem o endereco da tecla
	lw $s1, 0($s0)
	beq $s1, $0, preGame
	lw $s2, 4($s0)
	bne $s2, 'x', preGame
	
	jal deletarPressXToStart
# jogo em execucao
	# detalhes dos tiros
	lui $t5, 0x1001 # registrador que vai armazenar um vetor
	addi $t5, $t5, 131900 # endereco inicial do vetor

	# detalhes das mortes (carro)
	lui $s0, 0x1001 # endereco para armazenar o os scores
	addi $s0, $s0, 51216
	sw $0, 16($t5) # zerando o contador de mortes
	sw $s0, 20($t5) # guardando o endereco dos scores na memoria
	addi $s1, $0, 0xd07070
	sw $s1, 0($s0)
	sw $s1, 8($s0)
	sw $s1, 16($s0)
	
	# detalhes das mortes (nave)
	addi $s0, $s0, 444
	sw $0, 24($t5) # zerando o contador de mortes
	sw $s0, 28($t5) # guardando o endereco dos scores na memoria
	addi $s1, $0, 0xfffffff
	sw $s1, 0($s0)
	sw $s1, 8($s0)
	sw $s1, 16($s0)
comecoDoJogo:
	# detalhes da nave1
	addi $t9, $zero, 64 # contador dos movimentos da nave 1
	addi $t7, $zero, 4 # valor que soma para a trajetoria da nave
	lui $t8, 0x1001 # registrador que armazena o endereco da nave 1
	addi $a0, $t8, 0 # registrador de parametros
	jal desenhaNave1 # funcao para desenhar a nave 1

	# detalhes da cratera
        lui $t0, 0x1001 # registrador que contem o endereco da cratera
        addi $t0, $t0, 45548 # endereco inicial onde vai estar a cratera
     	addi $a2, $0, 120 # contador para limitar o movimento da cratera 
     	
     	# detalhes do carro
	lui $a3, 0x1001 # registrador que contem o endereco do carro
	add $a3, $a3, 40968 # soma realizada para posicionar o carro no lugar correto
	
	# detalhes da entrada do teclado
	lui $t1, 0xffff # registrador que contem o endereco da tecla
	addi $t3, $0, 0 # registrador para armazenar a altura do carro
	addi $t4, $0, 2 # registrador para armazenar o limite do movimento do carro para os lados
	
	# detalhes dos tiros
	sw $0, 0($t5) # zerando o contador de tiros da nave
	sw $0, 8($t5) # zerando o contador de tiros do carro (vetical)


	# registradores utilizados para armazenar informacoes durante o jogo
	# t0, t1, t2, t3, t7, t8, t9, a1, a2,a3

executando:
	beq $t3, $0, verTeclado # se a altura for zero, pula para verTeclado
	addi $t3, $t3, -1 # diminui 1 do contador de altura do carro
	addi $a0, $a3, 0 # colocando o endereco atual do carro no registrador de parametros para deletar da tela
	jal deletarCarro # funcao para deletar o carro da tela
	add $a3, $a3, +512 # atualizando o endereco do carro, para que ele fique uma linha abaixo
	addi $a0, $a3, 0 # colocando o novo endereco do carro no registrador de parametros para desenhar na tela
	jal desenhaCarro # funcao para desenhar o carro na tela

# verifica se tem entrada do teclado
verTeclado:
	lw $t2, 0($t1)
	beq $t2, $0, segueOJogo
	lw $t2, 4($t1)
	# verificando se move o carro para a esquerda
	bne $t2, 'a', verDireita # pula para verificar se move para a direita
	beq $t4, $0, verDireita # verifica se chegou no limite da esquerda, se nao pula para verificar se move para a direita
	addi $a0, $a3, 0
	jal deletarCarro
	addi $t4, $t4, -2
	addi $a3, $a3, -8
	add $a0, $a3, 0
	jal desenhaCarro # funcao para desenhar carro

# verificando se move o carro para a direita
verDireita:
	bne $t2, 'd', verPular # pula para verificar se pode pular (o carro)
	beq $t4, 112, verPular # verifica se chegou no limite da esquerda, se nao pula para verificar se pode pular (o carro)
	addi $a0, $a3, 0
	jal deletarCarro
	addi $t4, $t4, 2
	addi $a3, $a3, +8
	add $a0, $a3, 0
	jal desenhaCarro # funcao para desenhar carro
	
# verificando se pila o carro
verPular:
	bne $t2, 'w', segueOJogo
	bne $t3, $0, segueOJogo # nao pula se a altura for diferente de zero
	addi $a0, $a3, 0
	jal deletarCarro
	addi $t3, $t3, 8
	addi $a3, $a3, -4096
	add $a0, $a3, 0
	jal desenhaCarro # funcao para desenhar carro
	
	
segueOJogo:
# verificando se pode atirar
	lw $s0, 8($t5) # pegando o contador de tiro
	beq $s0, 82, fimTelaTiroVertical
	bne $s0, $0, continuaTirosCarroVertical
	

	bne $t2, ' ', fimAtirarCarroVertical
# codigo dos tiros do carro na vertical
	bne $t3, $0, fimAtirarCarroVertical # nao atira se a altura for diferente de zero

	lw $s0, 8($t5) # pegando o contador de tiro

	bne $s0, 82, verInicioTirosCarroVertical # se igual a 72 -> chegou ao fim da tela; se nao igual -> pula para verificar se ï¿½ o inicio do tiro
fimTelaTiroVertical:
	# shadow
	lw $s0, 12($t5) # pegando o endereco atual do tiro
	lw $s1, 65536($s0) # pegando a cor correspondente na shadow
	sw $s1, 0($s0) # colocando a cor correspondente da shadow
	sw $0, 8($t5) # resetando o contador (memoria)
	addi $s0, $0, 0 # resetando o contador (variavel)
	bne $t2, ' ', fimAtirarCarroVertical

verInicioTirosCarroVertical:
	beq $s0, $0, inicioTirosCarroVertical # se igual a zero -> inicio do tiro; se diferente -> continua os tiros

continuaTirosCarroVertical:
	# shadow
	lw $s0, 12($t5) # pegando o endereco atual do tiro
	lw $s1, 65536($s0) # pegando a cor correspondente na shadow
	sw $s1, 0($s0) # colocando a cor correspondente da shadow no lugar do tiro
	
	# verifica colisao e coloca tiro na tela
	addi $s0, $s0, -2048 # definindo o proximo endereco do tiro
	lw $s4, 512($s0) # pega o endereco seguinte ao tiro
	beq $s4, 0xffffffff, verMortesNave # se igual a cor da nave, chama funcao pra contar os tiros
	beq $s4, 0x010101, verMortesNave # se igual a cor da nave, chama funcao pra contar os tiros 
	sw $s0, 12($t5) # atualizando o endereco atual do tiro
	addi $s2, $0, 0xff0000 # cor branca do tiro
	sw $s2, 0($s0) # colocando o tiro na tela

	lw $s3, 8($t5) # pegando o contador do tiro
	addi $s3, $s3, +4 # incrementando o contador
	sw $s3, 8($t5) # atualizando o contador na memoria
	j fimAtirarCarroVertical # finalizando a funcao

inicioTirosCarroVertical:
	addi $s0, $a3, 0 # pegando o endereco atual do carro
	addi $s0, $s0, -492 # pegando o endereco atual carro (lugar onde sai o tiro)
	addi $s1, $0, 0xff0000 # cor branca do tiro
	sw $s1, 0($s0) # colocando o tiro na tela
	sw $s0, 12($t5) # colocando o endereco do primeiro tiro na segunda posicao do vetor

	addi $s2, $0, +2 # incrementado o contador do tiro
	sw $s2, 8($t5) # atualizando o contador no vetor

fimAtirarCarroVertical:
	#jr $ra # retornando para a execucao normal do jogo
	nop


#segueOJogo:
	bne $t9, $zero, matemDirecaoNave1 # quando chegar a 0, muda a direï¿½ï¿½o
	addi $t9, $zero, 64 # contador dos moviemntos da nave 1
	mul $t7, $t7, -1
	
matemDirecaoNave1:

	bne $a2, $0, mantemBuraco
	add $a0, $t0, 0
	jal deletarBuraco
        lui $t0, 0x1001 # registrador que contem o endereco do buraco
        addi $t0, $t0, 45548 # endereco inicial em que vai estar o buraco
     	addi $a2, $0, 120 # contador para limitar o movimento do buraco a 1 linha
mantemBuraco:
	jal passaCenario
	addi $a0, $t8, 0
	jal deletarNave1 # funï¿½ï¿½o para deletar a nave 1
	
	add $t8, $t8, $t7
	add $a0, $t8, $0
	jal desenhaNave1 # funï¿½ï¿½o para desenhar a nave 1
	addi $t9, $t9, -1
	jal passaCenario
	
	addi $a0, $t8, 0
	jal deletarNave1 # funï¿½ï¿½o para deletar a nave 1
	
	add $t8, $t8, $t7
	add $a0, $t8, $0
	jal desenhaNave1 # funï¿½ï¿½o para desenhar a nave 1
	addi $t9, $t9, -1
	
	add $a0, $t0, 0
	jal deletarBuraco
	
	add $t0, $t0, -8
	add $a0, $t0, 0
	jal desenhaBuraco
	addi $a2, $a2, -2
	
	# codigo que eu apaguei 2
	

	add $a0, $a3, 0
	jal desenhaCarro # funcao para desenhar carro
	
	# tiros da nave 1
	add $a0, $t8, $0
	jal atirarNave1
	#jal atirarNave1

	
	jal passaCenario
	j executando # retorna para a execucao normal do jogo


# funcao para pintar a nave 1 na tela
# o $a0 contem o endereï¿½co de memoria do primeiro pixel da nave 1
desenhaNave1: 
	addi $s0, $zero, 56
	lui $s1, 0x1001
	addi $s2, $zero, 0

pintaNave1: 	
	beq $s0, $zero, fimDesenhaNave1
	lw $s3, 131072($s1)
	sw $s3, 0($a0)
	addi $s2, $s2, 1
	
	beq $s2,7, pulaLinhaNave1 #linha nave 1
	addi $a0, $a0, 4
	j pulaColunaNave1 # coluna nave 1
	
pulaLinhaNave1:	
	addi $a0, $a0, 488
	addi $s2, $zero, 0
pulaColunaNave1:
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	j pintaNave1

fimDesenhaNave1:
	jr $ra

# funcaoo para deletar a nave 1 da tela
# o $a0 contem o endereïco de memoria do primeiro pixel da nave 1
deletarNave1: 
	addi $s0, $zero, 56
	addi $s1, $zero, 0

cobreNave1:
	beq $s0, $zero, fimCobreNave1
	lw $s2, 65536($a0)
	sw $s2, 0($a0)
	addi $s1, $s1, 1

	beq $s1,7, pulaLinhaCobreNave1 #linha nave 1
	addi $a0, $a0, 4
	j pulaColunaCobreNave1 # coluna nave 1

pulaLinhaCobreNave1:	
	addi $a0, $a0, 488
	addi $s1, $zero, 0
pulaColunaCobreNave1:
	addi $s0, $s0, -1
	j cobreNave1

fimCobreNave1:
	jr $ra

# funcao para fazer o carrinho andar (quem anda realmente e o cenario)
passaCenario:
	lui $s0, 0x1001 # endereco inicial da tela
	addi $s0, $s0, 25600 # endereco inicial da tela
	addi $s1, $zero, 1920 # contador de pixels (total)
	addi $s2, $zero, 127 # contador de pixels (linha)
	addi $s4, $zero, 127 # contador de pixels (linha)

# laco para passar o cenario
forPassaCenario:
	bne $s2, $s4, meioLinha # se $s2 diferente de 127, esta no meio da linha
	lw $s7, 0($s0) # guardando o primeiro pixel da linha

meioLinha:
	beq $s1, $zero, fimPassaCenario # quando chegar o total de pixels a serem movidos, vai para fimPassaCenario
	beq $s2, $zero, ultimoPixel # quando $s2 for igual a 0. estamos no ï¿½ltimo pixel da linha
	lw $s3, 65540($s0) # pega a cor do proximo pixel da linha

	sw $s3, 0($s0) # colocar a cor no pixel anterior
	sw $s3, 65536($s0) # retorna o valor ï¿½ shadow
	j inc # pula para o incremento
ultimoPixel:
	addi $s2, $zero, 128 # contador de pixels (linha)
	sw $s7, 0($s0) # coloca o primeiro pixel da linha no final
	sw $s7, 65536($s0) # retorna o valor a shadow
inc:
	addi $s0, $s0, 4 # soma para o endereco do proximo pixel
	addi $s1, $s1, -1 # diminui a pixelizacao total
	addi $s2, $s2, -1 # diminui a pixelizacao da linha
	j forPassaCenario # retorna para o laco
	
# retorna para a execucao do jogo
fimPassaCenario:
	jr $ra
	

	
	
# funcao para pintar o carro na tela
# o $a0 contem o endereco de memoria do primeiro pixel do carro
desenhaCarro: 
	addi $s0, $zero, 128 # total de pixels do carro
	lui $s1, 0x1001 # endereï¿½o inicial da memï¿½ria
	addi $s2, $zero, 0

pintaCarro:
	beq $s0, $zero, fimDesenhaCarro # quando o contador chegar a zero, a funï¿½ï¿½o chega ao fim
	lw $s3, 131296($s1) # pegando a cor da memï¿½ria
	sw $s3, 0($a0) # adicionando no valor inicial do $a0 na tela
	addi $s2, $s2, 1 # incremento do contador
	
	beq $s2,16, pulaLinhaCarro # verifica se chegou ao ï¿½ltimo pixel da linha
	addi $a0, $a0, 4 # incremento do endereï¿½o da memï¿½ria (tela)
	#addi $t4, $t4, 4 # incremento do endereï¿½o da memï¿½ria (vetor das cores)
	j pulaColunaCarro # pula a coluna
	
pulaLinhaCarro:	
	addi $a0, $a0, 452
	addi $s2, $zero, 0
pulaColunaCarro:
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	j pintaCarro

fimDesenhaCarro:
	jr $ra


# funcao para pintar o carro na tela
# o $a0 contem o endereï¿½co de memoria do primeiro pixel do carro
deletarCarro: 
	addi $s0, $zero, 128 # total de pixels do carro
	addi $s2, $zero, 0

cobreCarro:
	beq $s0, $zero, fimDeletarCarro # quando o contador chegar a zero, a funï¿½ï¿½o chega ao fim
	lw $s3, 65536($a0) # pegando a cor da memï¿½ria
	sw $s3, 0($a0) # adicionando no valor inicial do $a0 na tela
	addi $s2, $s2, 1 # incremento do contador
	
	beq $s2, 16, pulaLinhaDeletarCarro # verifica se chegou ao ï¿½ltimo pixel da linha
	addi $a0, $a0, 4 # incremento do endereï¿½o da memï¿½ria (tela)
	j pulaColunaDeletarCarro # pula a coluna
	
pulaLinhaDeletarCarro:	
	addi $a0, $a0, 452
	addi $s2, $zero, 0
pulaColunaDeletarCarro:
	addi $s0, $s0, -1
	j cobreCarro

fimDeletarCarro:
	jr $ra



# funï¿½ï¿½o para pintar o buraco na tela
# o $a0 contï¿½m o endereï¿½o de memï¿½ria do primeiro pixel do buraco
desenhaBuraco:
	addi $s0, $zero, 20 # total de pixels do buraco
	lui $s1, 0x1001 # endereï¿½o inicial da memï¿½ria
	addi $s2, $zero, 0 # contador de pixels na linha

pintaBuraco:
	
	# verificando se houve colisao
	lw $s4, -512($a0)
	bne $s4, 0xd07070, naoColisaoBuraco
	lw $s5, 16($t5) # contador de mortes
	addi $s5, $s5, 1
	sw $s5, 16($t5)
	beq $s5, 3, gameOver
	beq $s5, 2, tiraSegundoPonto
	lw $s5, 20($t5) # endereco do score
	addi $s6, $s6, 0x000000
	sw $s6, 16($s5)
	
	add $a0, $t8, $0
	jal deletarNave1 # funcao para deletar a nave 1
	add $a0, $t0, 0
	jal deletarBuraco  # funcao para deletar ao buraco
	add $a0, $a3, 0
	jal deletarCarro # funcao para deletar o carro
	
	j comecoDoJogo
	

naoColisaoBuraco:	
	
	beq $s0, $zero, fimDesenhaBuraco # quando o contador chegar a zero, a funï¿½ï¿½o chega ao fim
	lw $s3, 131808($s1) # pegando a cor da memï¿½ria
	sw $s3, 0($a0) # adicionando no valor inicial do $a0 na tela
	addi $s2, $s2, 1 # incremento do contador
	
	beq $s2,5, pulaLinhaBuraco # verifica se chegou ao ï¿½ltimo pixel da linha
	addi $a0, $a0, 4 # incremento do endereï¿½o da memï¿½ria (tela)
	j pulaColunaBuraco # pula a coluna
	
pulaLinhaBuraco:	
	addi $a0, $a0, 496
	addi $s2, $zero, 0
pulaColunaBuraco:
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	j pintaBuraco

fimDesenhaBuraco:
	jr $ra

# funcao para deletar o buraco na tela
# o $a0 contem o endereco de memoria do primeiro pixel do buraco
deletarBuraco:
	addi $s0, $zero, 20 # total de pixels do buraco
	addi $s1, $zero, 0 # contador de pixels na linha

cobreBuraco:
	beq $s0, $zero, fimDeletarBuraco # quando o contador chegar a zero, a funï¿½ï¿½o chega ao fim
	lw $s2, 65536($a0) # pegando a cor da memï¿½ria
	sw $s2, 0($a0) # adicionando no valor inicial do $a0 na tela
	addi $s1, $s1, 1 # incremento do contador
	
	beq $s1,5, pulaLinhaDeletarBuraco # verifica se chegou ao ï¿½ltimo pixel da linha
	addi $a0, $a0, 4 # incremento do endereï¿½o da memï¿½ria (tela)
	j pulaColunaDeletarBuraco # pula a coluna
	
pulaLinhaDeletarBuraco:	
	addi $a0, $a0, 496
	addi $s1, $zero, 0
pulaColunaDeletarBuraco:
	addi $s0, $s0, -1
	j cobreBuraco

fimDeletarBuraco:
	jr $ra


# funcao para desenhar os tiros da nave na tela
atirarNave1:
	lw $s1, 0($t5)
	
	bne $s1, 80, verInicio # pula para verificar se ï¿½ o inicio do tiro
	# shadow
	lw $s0, 4($t5) # pegando o endereco atual do tiro
	lw $s1, 65536($s0) # pegando a cor correspondente na shadow
	sw $s1, 0($s0) # colocando a cor correspondente da shadow
	sw $0, 0($t5) # resetando o contador
	addi $s1, $0, 0

verInicio:
	beq $s1, $0, inicioTirosNave1

continuaTirosNave1:
	# shadow
	lw $s0, 4($t5) # pegando o endereco atual do tiro
	lw $s1, 65536($s0) # pegando a cor correspondente na shadow
	sw $s1, 0($s0) # colocando a cor correspondente da shadow

	addi $s0, $s0, 1024 # definindo o proximo endereco do tiro

	# verificando se houve colisao
	lw $s4, -512($s0)
	bne $s4, 0xd07070, naoColisaoTiroNave
	lw $s5, 16($t5) # contador de mortes
	addi $s5, $s5, 1
	sw $s5, 16($t5)
	beq $s5, 3, gameOver
	beq $s5, 2, tiraSegundoPonto
	lw $s5, 20($t5) # endereco do score
	addi $s6, $s6, 0x000000
	sw $s6, 16($s5)
	
	add $a0, $t8, $0
	jal deletarNave1 # funcao para deletar a nave 1
	add $a0, $t0, 0
	jal deletarBuraco  # funcao para deletar ao buraco
	add $a0, $a3, 0
	jal deletarCarro # funcao para deletar o carro
	
	j comecoDoJogo
	
tiraSegundoPonto:
	lw $s5, 20($t5) # endereco do score
	addi $s6, $s6, 0x000000
	sw $s6, 8($s5)
	
	add $a0, $t8, $0
	jal deletarNave1 # funcao para deletar a nave 1
	add $a0, $t0, 0
	jal deletarBuraco  # funcao para deletar ao buraco
	add $a0, $a3, 0
	jal deletarCarro # funcao para deletar o carro
	
	j comecoDoJogo

naoColisaoTiroNave:
	sw $s0, 4($t5) # atualizando o endereco atual do tiro
	addi $s2, $0, 0xffffffff # cor branca do tiro
	sw $s2, 0($s0)

	lw $s3, 0($t5)
	addi $s3, $s3, +2
	sw $s3, 0($t5) # atualizando o contador no vetor
	j fimAtirarNave1

inicioTirosNave1:
	addi $s1, $t8, 0 # pegando o endereco atual da nave 1
	addi $s1, $s1, 4624 # pegando o endereco atual da nave 1 (lugar onde sai o tiro)
	addi $s2, $0, 0xffffffff # cor branca do tiro
	sw $s2, 0($s1)
	sw $s1, 4($t5) # colocando o endereco do primeiro tiro na segunda posicao do vetor
	lw $s0, 0($t5)
	addi $s0, $s0, +2
	sw $s0, 0($t5) # atualizando o contador no vetor
	
fimAtirarNave1:
	jr $ra
	
verMortesNave:
	# verificando se houve colisao
	lw $s5, 24($t5) # contador de mortes
	addi $s5, $s5, 1
	sw $s5, 24($t5)
	beq $s5, 3, gameWin
	beq $s5, 2, tiraSegundoPontoNave
	lw $s5, 28($t5) # endereco do score
	addi $s6, $s6, 0x000000
	sw $s6, 16($s5)
	
	add $a0, $t8, $0
	jal deletarNave1 # funcao para deletar a nave 1
	add $a0, $t0, 0
	jal deletarBuraco  # funcao para deletar ao buraco
	add $a0, $a3, 0
	jal deletarCarro # funcao para deletar o carro
	
	j comecoDoJogo
	
tiraSegundoPontoNave:
	lw $s5, 28($t5) # endereco do score
	addi $s6, $s6, 0x000000
	sw $s6, 8($s5)
	
	add $a0, $t8, $0
	jal deletarNave1 # funcao para deletar a nave 1
	add $a0, $t0, 0
	jal deletarBuraco  # funcao para deletar ao buraco
	add $a0, $a3, 0
	jal deletarCarro # funcao para deletar o carro

	j comecoDoJogo


gameOver:
        lui $s0, 0x1001
        addi $s0, $s0, 51416

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 352

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 352

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 352

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 352

        addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

	addi $s1, $0, 0xff0000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        j fim # remover isso

	addi $a0, $0, 1000
	addi $v0, $0, 32
	syscall

	lui $s0, 0x1001
	addi $s1, $0, 2048
	addi $s2, $0, 0x939393

forGameOver:
	beq $s1, $0, fim
	sw $s2, 0($s0)
	sw $s2, 4($s0)
	sw $s2, 8($s0)
	sw $s2, 12($s0)
	sw $s2, 16($s0)
	sw $s2, 20($s0)
	sw $s2, 24($s0)
	sw $s2, 28($s0)
	addi $a0, $0, 1
	addi $v0, $0, 32
	syscall
	addi $s0, $s0, 32
	addi $s1, $s1, -1
	j forGameOver
	
gameWin:

        lui $s0, 0x1001
        addi $s0, $s0, 51404

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 464

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 464

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 464

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 464

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00000000
        sw $s1, 0($s0)
        addi $s0, $s0, 4

        addi $s1, $0, 0x00ff00
        sw $s1, 0($s0)
        addi $s0, $s0, 4
        
        j fim # remover isso

	addi $a0, $0, 1000
	addi $v0, $0, 32
	syscall

	lui $s0, 0x1001
	addi $s1, $0, 2048
	addi $s2, $0, 0x00ff00

forGameWin:
	beq $s1, $0, fim
	sw $s2, 0($s0)
	sw $s2, 4($s0)
	sw $s2, 8($s0)
	sw $s2, 12($s0)
	sw $s2, 16($s0)
	sw $s2, 20($s0)
	sw $s2, 24($s0)
	sw $s2, 28($s0)
	addi $a0, $0, 1
	addi $v0, $0, 32
	syscall
	addi $s0, $s0, 32
	addi $s1, $s1, -1
	j forGameWin


pressXToStart:
        lui $s0, 0x1001
        addi $s0, $s0, 15488

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0xff0000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        jr $ra

deletarPressXToStart:
        lui $s0, 0x1001
        addi $s0, $s0, 15488

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 212

        addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

	addi $s3, $0, 0x00000000
        sw $s3, 0($s0)
        addi $s0, $s0, 4

        jr $ra

	
fim:	
	addi $v0, $zero, 10
	syscall
