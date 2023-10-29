import wollok.game.*

class Colision {
	method position()
	method position(unaPosicion)
	
	method heigth() 
	method width()
	
	method objetosEnColision(){
		/*
		 * PROPOSITO: Obtener todos los objetos colisionables que estan en colision con "self"
		 * 
		 * RETORNO: Un array - Los visuales con los que se esta realizando la colision
		 * 
		 * OBSERVACIONES: Solo devuelve los objetos que se encuentran en el juego y heredan de "Colision"
		 */
		return game.allVisuals()
				.filter{v => v != self 
						  && v.toString() == "Objeto Colision" 
						  && self.enColisionCon(v)
				}
	}
	
	method enColisionCon(unObjeto){
		/*
		 * PROPOSITO: Verificar si "self" esta en colision con "unObjeto"
		 * 
		 * PARAMETROS: un Visual Colisionable - Es el visual contra el cual se va a verificar si esta colisionando
		 * 
		 * RETORNO: Un Booleano - Describe si se esta realizando o no la colision
		 * 
		 * PRECONDICIONES: El objeto "unObjeto" debe heredar de "Colision"
		 */
		 
		const x = self.position().x()
		const y = self.position().y()
		const posXObj = unObjeto.position().x()
		const posYObj = unObjeto.position().y()
		const altoDeObj = unObjeto.heigth()
		const anchoDeObj = unObjeto.width()
		
		
		return  x < posXObj + anchoDeObj && 
				x + self.width() > posXObj &&
				y < posYObj + altoDeObj &&
				y + self.heigth() > posYObj
	}
	
	override method toString() = "Objeto Colision"
}
