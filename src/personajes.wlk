import wollok.game.*
import colision.*

/*
 * Si un objeto es colisionable, hereda de "Colision"
 * 
 * Se añaden los siguientes nuevos atributos: 
 * "heigth": Representa el limite superior de la colision (el alto de la imagen del objeto)
 * "width": Representa el limite derecho de la colision (el ancho de la imagen del objeto)
 */

object azul inherits Colision{
	var property image = "azul.png" 
	var property position = game.at(280, 15)
	const property heigth = 20
	const property width = 20
}


object rojo inherits Colision{
	var property image = "rojo.png"
	var property position = game.at(330, 15)
	const property heigth = 50
	const property width = 50
}