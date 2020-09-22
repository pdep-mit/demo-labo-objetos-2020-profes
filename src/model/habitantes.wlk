import casa.*

object azucena {	
	// TODO: implementar la lógica de Azucena

	method leGusta(disfraz) {
		return disfraz.adorable() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(not self.leGusta(disfraz)) 5 else disfraz.ternura()
	}
}

object sandra {
	// TODO: implementar la lógica de Sandra

	method leGusta(disfraz) {
		return disfraz.ternura() > disfraz.terror() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(casa.estaEnOrden()) 8 else 2 
	}
}

object jorge {
	// TODO: implementar la lógica de Jorge

	method leGusta(disfraz) {
		return disfraz.terrorifico() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(casa.caramelos() >= 50) 10 else 4
	}
}