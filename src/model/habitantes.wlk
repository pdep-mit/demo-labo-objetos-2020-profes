import casa.*

object azucena {	
	method leGusta(disfraz) {
		return disfraz.adorable() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(not self.leGusta(disfraz)) 5 else disfraz.ternura()
	}
	method cerrarLaPuerta(){
		if(casa.caramelos() >= 5)
			casa.darCaramelos(1)
	}
	method relevo() = jorge
}

object sandra {
	method leGusta(disfraz) {
		return disfraz.ternura() > disfraz.terror() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(casa.estaEnOrden()) 8 else 2 
	}
	method cerrarLaPuerta(){
		// No hace nada en particular
	}
	method relevo() = azucena
}

object jorge {
	method leGusta(disfraz) {
		return disfraz.terrorifico() 
	}
	method cuantosCaramelosDaria(disfraz) {
		return if(casa.caramelos() >= 50) 10 else 4
	}
	method cerrarLaPuerta(){
		casa.acomodar(2)
	}
	method relevo() = sandra
}