object pepita {
	var energia = 100
	var cenas = 0
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		cenas = cenas + 1
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	var cenas = 0
	method energia() {
		return energia
	} 
	method comer(comida) {
	  energia = energia + comida.energiaQueAporta() / 2
		cenas = cenas + 1
	}
	method volar(_distancia) {
		energia = energia - 20 - _distancia * 2 
	}
}

object roque {
	var ave = pepita
	method ave(_ave) {
		ave = _ave
	}
	method alimentar(_alimento) {
		ave.comer(_alimento)
	}
	method cenas(){
		return ave.cenas()
	} 
}