# Projeto da disciplina de Arquitetura de Computadores 2023.2 - Moon Patrol

<img width="662" height="642" alt="image" src="https://github.com/user-attachments/assets/9af53690-10b9-4979-bed3-8cda4e308af6" />


## Esse projeto tem como objetivo o desenvolvimento do jogo Moon Patrol na linguagem de baixo nível Assembly.

## Roteiro - Moon Patrol em Assembly
Eu me chamo Rick Hill, aluno do segundo período do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas, e esse projeto foi feito para a disciplina de Arquitetura de Computadores do professor Eduardo Bráulio.

## O Moon Patrol
Moon Patrol é um famoso jogo de fliperama lançado pela Irem (logo da empresa) em 1983, e foi adaptado para o Atari 2600 pela GCC, que fez um ótimo trabalho. Apesar das limitações do console e dos cortes necessários, Moon Patrol manteve sua qualidade, revelando-se uma experiência gratificante no Atari.

O jogador deve controlar um veículo que pode pular crateras e atirar em barreiras que podem atrapalhar sua patrulha pelo terreno lunar. Além do seu tiro frontal, seu veículo dispõe de uma arma que atira para cima, usada para abater os veículos alienígenas que tentam lhe destruir. O objetivo é destruir os inimigos e tentar ir o mais longe possível.
## O Projeto
## O Jogo

No caso do jogo desenvolvido neste projeto, há apenas uma nave que fica atirando em direção vertical para baixo com o intuito de acertar o veículo. O carro, por sua vez, tem o objetivo de atirar, em direção vertical para cima, e atingir a nave. Há ainda a cratera como elemento extra. Tanto o carro quanto a nave possuem três vidas e eles perdem uma se sofrer um tiro, além de que o carro também perde uma vida se cair na cratera. Cada vez que um elemento perde uma vida o jogo recomeça até que algum deles perca todas as três vidas. Se for o carrinho, é GAME OVER e se for a nave você vence o jogo.

## O Código
Função ComecoDoJogo: Uma das principais funções é a “Começo Do Jogo”, nela são definidas algumas coisas importantes para o funcionamento do jogo. Por exemplo, é definido um contador para limitar os movimentos da nave, do carro e da cratera, com o intuito de evitar que eles atravessem as bordas da tela. Além disso, são definidos os registradores que contém os endereços dos elementos, importantes para quando for preciso movimentá-los.

Função Executando: Enquanto não houver mortes, o jogo se desenrola dentro desse loop chamado “Executando”. A primeira coisa que acontece nesse laço é verificar a altura do carro, quando se for diferente de zero, o contador da altura é diminuído em 1 e é somado 512 ao endereço do veículo, para que ele desça 1 linha. Após isso, verifica-se se há entrada do teclado. Quando houver, basta verificar qual é a tecla e fazer aquilo que se deve quando ela é pressionada. As teclas que mudam o comportamento do jogo são: A e D, que faz o carro ir para a direita ou para a esquerda, respectivamente. W, que faz o veículo dar um salto. Por fim, a tecla Espaço, que permite o veículo atirar.

Seguindo, tem os tiros do carro, para o qual é permitido somente 1 tiro por vez. Nesse trecho de código há também a verificação de colisão na nave, que eu faço comparando as cores. Além disso,eu verifico se a nave e a cratera chegaram nas bordas, se sim, a nave faz o movimento contrário ao que estava fazendo antes e a cratera volta para o lado direito do cenário. Seguindo, são executadas as funções para desenhar e deletar os elementos na tela. Antes de chamar cada função, eu pego o endereço do elemento que eu quero desenhar ou deletar e coloco em um registrador de parâmetros, que será manipulado dentro da função. 
As funções para desenhar a nave e o carro são basicamente a mesma coisa. Eu pego suas cores que estão ordenadas em um vetor e desenho por pixel por pixel na tela, atentando-se para a largura do elemento para pular para a próxima linha. O laço para desenhar cada pixel na tela é executado n vezes, em que n é a quantidade de pixels do elemento.

Para deletá-los da tela, também são basicamente a mesma coisa, inclusive é bem semelhante às funções desenhar. A diferença é que ao invés de pegar as cores de um vetor, eu pego da chamada shadow, que é basicamente um lugar onde replicamos o cenário, justamente para poder recuperar quando precisar fazer alguma modificação.

Função passaCenario: na função “passa cenário”, eu basicamente movimento cada pixel da monta para a esquerda, para dar a ideia de que o carro está andando. A cada linha modificada, eu pego o primeiro pixel e armazeno em um registrador e até chegar no último pixel eu movimento cada uma para um posição anterior. Quando chegar ao fim da linha, basta pegar o primeiro pixel que eu salvei e colocar no final do último pixel. 

Função AtirarNave: Essa função pode fazer duas coisas, dependendo se já há um tiro da nave e se não há. Assim como o veículo, a nave pode disparar apenas um tiro por vez. Então, se já houver um tiro, eu pego o seu endereço atual e avanço ele mais duas linhas, somando 1024. Se não houver, eu preciso pegar o endereço atual da nave, e disparar o tiro a partir dalí. Nessa função, eu também faço a verificação da colisão com o carro.

## Considerações Finais
Gostaria de enfatizar a importância desse projeto para o nosso aprendizado na arquitetura de computadores. Cada lista e cada avaliação desde o início do semestre foram muito importantes para entendermos o funcionamento do MIPS. Gostaria de ressaltar também a importância de uma turma unida, desde o primeiro dia de aula, que sem dúvidas, contribuiu para que tivéssemos excelentes projetos. Por fim, vale destacar também os ensinamentos e atenção do professor Eduardo Bráulio, além das suas belas palavras de motivação que nos fez acreditar que somos capazes de fazer qualquer coisa.

Vídeo de Apresentação: [Moon Patrol em Assembly - Rick Hill](https://www.youtube.com/watch?v=fJZoJOEyPcs&authuser=1)
