import casa.*

object azucena {	
	method leGusta(disfraz) = disfraz.esAdorable()
	method cuantosCaramelosDaria(disfraz){
		if(self.leGusta(disfraz)){
			return disfraz.ternura()
		} else {
			return 5
		}
	}
}

object sandra {
	// TODO: implementar la lógica de Sandra
}

object jorge {
	// TODO: implementar la lógica de Jorge
}