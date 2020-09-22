import casa.*

object azucena {	
	// TODO: implementar la lógica de Azucena

	method leGusta(disfraz) {
		return disfraz.adorable() 
	}
}

object sandra {
	// TODO: implementar la lógica de Sandra

	method leGusta(disfraz) {
		return disfraz.ternura() > disfraz.terror() 
	}
}

object jorge {
	// TODO: implementar la lógica de Jorge

	method leGusta(disfraz) {
		return disfraz.terrorifico() 
	}
}