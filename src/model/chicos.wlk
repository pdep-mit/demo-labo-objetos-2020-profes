import wollok.game.*
import disfraces.*

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
		return tito.position().left(1)
	}
	method image(){
		// TODO: debería cambiar cuando se cambia el disfraz
		return "juanita-superheroe.png"
	}
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
	
	method visitar(unaCasa){
		unaCasa.pidioCaramelos(self)
		unaCasa.aumentarCaos(1)
	}
}