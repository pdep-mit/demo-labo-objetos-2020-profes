import wollok.game.*
import disfraces.*
import game.movimientos.*

object rolo {
	var property position = game.origin()
	method image() = "rolo.png"
	
	method cuantosCaramelosPuedeConseguir(unHabitante){
		return 1
	}
	method visitar(unaCasa){
		unaCasa.aumentarCaos(5)
	}
	
}

object juanita {
	var property disfraz = superheroe

	method position(){
		// Solución básica
		// return tito.position().left(1)
		
		// Solución para BONUS
		return haciaLaIzquierda.posicionSiguiente(tito.position())
	}
	method image() = return "juanita" + disfraz.sufijoImagen()
	method cuantosCaramelosPuedeConseguir(unHabitante) {
		return 2 + unHabitante.cuantosCaramelosDaria(disfraz)
	}
	
	method visitar(unaCasa){
		unaCasa.pidioCaramelos(self)
	}
}

object tito {
	var property position = game.at(2, 0)
	
	var property disfraz = superheroe

	method image() = return "tito" + disfraz.sufijoImagen()
	
	method cuantosCaramelosPuedeConseguir(unHabitante) { 
		if(disfraz == juanita.disfraz()) 
			return juanita.cuantosCaramelosPuedeConseguir(unHabitante)
		else
			return unHabitante.cuantosCaramelosDaria(disfraz)
	}
	
	method visitar(unaCasa){
		unaCasa.pidioCaramelos(self)
		unaCasa.aumentarCaos(1)
	}
}