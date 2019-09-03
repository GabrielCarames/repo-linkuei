class Carta{
	var numero
	var valor
	var nombre
	
	constructor(_numero, _valor, palo){
		numero = _numero
		valor = _valor
		nombre = numero + palo
	}
	
	method saberValor(){ return valor }
	method saberNumero() { return numero }
}

object tablero{
	const mazo = []
	const mesa = []
	const jugadores = #{}
	
	method quienTira() = return jugadores.any({x => x.puedeTirar()})
	method puntajeDeMesa(){ return mesa.sum({x => x.saberValor()}) }
	method hayEscobaDeMano(){ return (self.puntajeDeMesa() == 15) }
	
	method darCarta(jugador, carta){
		mazo.delete(carta)
		jugador.addCarta(carta)
	}
	
	method agregarCartaMesa(carta){ mesa.add(carta) }
	method eliminarCartaMesa(carta){ mesa.delete(carta) }
	method mostrarCartasMesa(){ return mesa }
	
	method agregarCartaMazo(carta){ mazo.add(carta) }
	method eliminarCartaMazo(carta){ mazo.delete(carta) }
	
	method mostrarMazo(){ return mazo }
}

class Jugador{
	const mano = []
	var esMano
	
	constructor(_esMano){ esMano = _esMano }
	
	method puedeTirar(){ return esMano }
	method puntajeTotal(){ return mano.sum({x => x.saberValor()}) }
	method addCarta(carta){ mano.add(carta)}
	method mostrarCartas(){ return mano }
}
