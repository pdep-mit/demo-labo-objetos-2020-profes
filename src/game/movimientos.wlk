import gameConfiguration.*
import wollok.game.*

/*
* Acá se define cómo se mueven los personajes cuando se usan las flechitas.
* Las posiciones son objetos inmutables, pero los personajes controlados pueden 
* moverse setteándose la nueva posición cuando sea necesario.
*/

object movimiento {
	method mover(personajeLibre, direccion){
		const nuevaPosicion = direccion.posicionSiguiente(personajeLibre.position())
		if(self.alturaValida(nuevaPosicion.y()))
			personajeLibre.position(nuevaPosicion)
	}
	method alturaValida(altura)
		= altura >= 0 && altura <= config.alturaSuelo()
}

object haciaArriba {
	method posicionSiguiente(posicion) = posicion.up(1)	
}

object haciaAbajo {
	method posicionSiguiente(posicion) = posicion.down(1)	
}

object haciaLaDerecha {
	method posicionSiguiente(posicion)
		= if(config.anchoMaximo() - 1 == posicion.x())
			game.at(0, posicion.y())
		  else posicion.right(1)	
}

object haciaLaIzquierda {
	method posicionSiguiente(posicion)
		= if(posicion.x() == 0)
			game.at(config.anchoMaximo() - 1, posicion.y())
		  else posicion.left(1)	
}
