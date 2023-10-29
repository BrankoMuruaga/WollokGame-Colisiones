import wollok.game.*
import personajes.*
import controles.*

object configuracion {
	method init(){
		game.title("Colisiones en Wollok")
	
		game.width(700)
		game.height(300)
		game.cellSize(1)
		
		game.boardGround("instrucciones.png")
		
		game.addVisual(rojo)
		game.addVisual(azul)
		
		
		controles.init()
		
		}
}