class Disfraz {
	const property ternura
	const property terror
	const nombre = ""
	
	method adorable() = ternura > 6 && terror < 4
	method terrorifico() = terror >= 8
	
	method nombreImagen(chico) = chico.nombre() + "-" + nombre + ".png"
}

const venom = new Disfraz(ternura = 0, terror = 8, nombre = "venom")
const superheroe = new Disfraz(ternura = 5, terror = 0, nombre = "superheroe")
const ironman = new Disfraz(ternura = 1, terror = 4, nombre = "ironman")
const harleyQuinn  = new Disfraz(ternura = 9, terror = 2, nombre = "harleyquinn")