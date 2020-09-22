import habitantes.*

object casa {
	var property caramelos = 100
	var property caos = 0
	var property quienAbreLaPuerta = azucena
	
	method image() = "casa.png"
	
	method abrirleA(alguien) {
		alguien.visitar(self) 
	}
	
	method cerrarLaPuerta(){
		quienAbreLaPuerta.cerrarLaPuerta()
		quienAbreLaPuerta = quienAbreLaPuerta.relevo()
	}
	
	method saludo(){
		if(self.seTerminoLaDiversion())
			return "¡Suficiente por hoy! Nos vamos a dormir."
			
		return quienAbreLaPuerta.saludo()
	}
	
	method seTerminoLaDiversion() {
		return caramelos == 0 || caos > 20
	}
	
	// El saludador va a ser el juego cuando se corra el programa de esa forma.
	// Desde los tests puede ser lo que más nos sirva para validar el funcionamiento del programa :D
	method teVisita(alguien, saludador){
		self.abrirleA(alguien)
		saludador.say(self, self.saludo())
		self.cerrarLaPuerta()
	}
	method estaEnOrden() = caos < 3
	
	method pidioCaramelos(alguien){
		self.darCaramelos(alguien.cuantosCaramelosPuedeConseguir(quienAbreLaPuerta))
	}
	method aumentarCaos(cantidad){
		caos += cantidad
	}
	method darCaramelos(cantidad) {
		caramelos -= caramelos.min(cantidad)
	}
	method acomodar(caosABajar) {
		caos -= caosABajar 
	}
}