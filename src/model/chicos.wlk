import wollok.game.*
import disfraces.*

object rolo {
	var property position = game.origin()
	method image() = "rolo.png"
	
	method cuantosCaramelosPuedeConseguir(unHabitante){
		return 1
	}
	
}

object juanita {
	var property disfraz = superheroe

	method position(){
		// TODO: debería estar siempre una celda a la derecha de tito
		return game.at(1, 0)
	}
	method image(){
		// TODO: debería cambiar cuando se cambia el disfraz
		return "juanita-superheroe.png"
	}
	method cuantosCaramelosPuedeConseguir(unHabitante) {
		return 2 + unHabitante.cuantosCaramelosDaria(disfraz)
	}
}

object tito {
	var property position = game.at(2, 0)
	
	var property disfraz = superheroe

	method image(){
		// TODO: debería cambiar cuando se cambia el disfraz
		return "tito-superheroe.png"
	}
	
	method cuantosCaramelosPuedeConseguir(unHabitante) { 
		if(disfraz == juanita.disfraz()) 
			return juanita.cuantosCaramelosPuedeConseguir(unHabitante)
		else
			return unHabitante.cuantosCaramelosDaria(disfraz)
	}
}