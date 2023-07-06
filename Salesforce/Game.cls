@isTest
public class Game {
    Public static Integer gameend = 0; //Indicador de finalizacion del juego
    //Metodo principal
    public static void Start(){
    // Inicializacion de variables
        Integer pos = 1; //posicion del jugador en el tablero
        
        //Creacion de serpientes dentro de un diccionario
        Map<Integer, Integer> snakes = new Map<Integer, Integer>{
            14 => 4,
            19 => 8,
            22 => 20,
            24 => 16
        };
        
        //Creacion de escaleras dentro de un diccionario
        Map<Integer, Integer> ladder = new Map<Integer, Integer>{
            3 => 11,
            6 => 17,
            9 => 18,
            10 => 12
        };
            
        while (true) { 
            Integer score = (Integer)Math.round(Math.random() * 5 + 1); //Se genera un numero entero aleatorio entre 1 y 6 y se almacena en una variable score
            System.debug('Dado arroja '+ score);
            pos+=score;
            System.debug('Jugador avanza a cuadro '+ score);
            
            //Se busca si la posicion del jugador corresponde a una de las keys de los diccionarios creados para saber si se encuentra
        	//en una casilla escalera o serpiente, y se almacena la nueva posicion correspondiente al valor que corresponde con la key 
        	//buscada
            if (snakes.containsKey(pos)) {
                System.debug('Haz caído en una serpiente!!!');
                pos = snakes.get(pos);
                System.debug('Jugador desciende a cuadro ' + pos);
            }
            
            if (ladder.containsKey(pos)) {
                System.debug('Haz caído en una escalera!!!');
                pos = ladder.get(pos);
                System.debug('Jugador avanza a cuadro ' + pos);
            }
            
            if (pos >= 25) {
                System.debug('Juego Finalizado!');
                gameEnd = 1;
                break;
        } 

       }
    }
    
    //Test unitario
    @isTest static void testGame(){
        Test.startTest();
        
        Game.Start();
        
        Test.stopTest();
        
        System.assertEquals(1, Game.gameend);
            
    }
}