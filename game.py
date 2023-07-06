import random

def Rungame(pos=1, gameend=0, snakes={14:4,19:8,22:20,24:16}, ladder={3:11,6:17,9:18,10:12}):
    '''
    Se define la clase game, donde pos es la posicion del jugador en el tablero y se inicializa en 1, se generan 2 dicionarios
    para las serpientes y escaleras, conde el key corresponde al cuadro donde inicia, y el valor el cuadro donde finaliza. 
    '''
    while True:
        score = random.randint(1,6) #Se genera un numero entero aleatorio entre 1 y 6 y se almacena en una variable score
        print("\nDado arroja: "+str(score))
        pos += score #Se modifica la posicion del jugador sumando el score obtenido 

        print("\nJugador avanza a cuadro "+str(pos))

        '''
        Se busca si la posicion del jugador corresponde a una de las keys de los diccionarios creados para saber si se encuentra
        en una casilla escalera o serpiente, y se almacena la nueva posicion correspondiente al valor que corresponde con la key 
        buscada
        '''
        if (pos in snakes):
            print("\nHaz caido en una serpiente!!!")
            pos = snakes[pos]
            print("\nJugador desciende a cuadro " + str(pos))

        if (pos in ladder):
            print("\nHaz caido en una escalera!!!")
            pos = ladder[pos]
            print("\nJugador avanza a cuadro " + str(pos))

        if pos >= 25: #En caso de llegar a la casilla 25 finaliza el juego
            print("\nJuego Finalizado!")
            gameend = 1
            return(gameend)
            break

Rungame() #Se llama a la funcion para iniciar el juego.