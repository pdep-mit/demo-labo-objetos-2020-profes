class Disfraz {
	const property ternura
	const property terror
	
	method adorable() = ternura > 6 && terror < 4
	method terrorifico() = terror >= 8
}

const venom = new Disfraz(ternura = 0, terror = 8)
const superheroe = new Disfraz(ternura = 5, terror = 0)
const ironman = new Disfraz(ternura = 1, terror = 4)
const harleyQuinn  = new Disfraz(ternura = 9, terror = 2)