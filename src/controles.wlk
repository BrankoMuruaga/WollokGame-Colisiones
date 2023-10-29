import wollok.game.*
import configuracion.*
import personajes.*

object controles {
	method init(){
		const v = 10
		
		keyboard.a().onPressDo{
				azul.position(azul.position().left(v))
		}
		keyboard.d().onPressDo{
				azul.position(azul.position().right(v))
		}
		keyboard.s().onPressDo{
				azul.position(azul.position().down(v))
		}
		keyboard.w().onPressDo{
				azul.position(azul.position().up(v))
		}
		keyboard.left().onPressDo{
				rojo.position(rojo.position().left(v))
		}
		keyboard.right().onPressDo{
				rojo.position(rojo.position().right(v))
		}
		keyboard.down().onPressDo{
				rojo.position(rojo.position().down(v))
		}
		keyboard.up().onPressDo{
				rojo.position(rojo.position().up(v))
		}
	}
	
}