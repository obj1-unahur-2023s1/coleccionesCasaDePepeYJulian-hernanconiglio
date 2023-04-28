import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any({c=>c.esComida()})
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() ||
			   cosas.last().precio() > 50000
	}
	
	method vieneDeEquiparseConSize() {
		return cosas.get(cosas.size()-1).esElectrodomestico() ||
		cosas.get(cosas.size()-1).recio() > 50000
	}
	
	method esDerrochona() {
		return cosas.map({c=>c.precio()}).sum() >= 90000 
	}
	
	method totalComprado() = cosas.map({c=>c.precio()}).sum()
	
	method esDerrochonaBis() = self.totalComprado() >= 90000
	
	method esDerrochonaTris() {
		return cosas.sum({cosa=>cosa.precio()}) >= 90000
	}
	
	method compraMasCara() {
		return cosas.max({c=>c.precio()})
	}
	
	method electrodomesticosComprados() {
		return cosas.filter({c=>c.esElectrodomestico()})
	}
	
	method malaEpoca() {
		return cosas.all({c=>c.esComida()})
	}
	
	method queFaltaComprar(lista) {
		return lista.asSet().difference(cosas.asSet()).asList()
	}
	
	method faltaComida() {
		return cosas.count({c=>c.esComida()}) < 2
	}
	
}
