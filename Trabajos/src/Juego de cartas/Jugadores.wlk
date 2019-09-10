import Tablero.*
class Jugador{
	const mano = []
	var esMano
	
	constructor(_esMano){ esMano = _esMano }
	
	method mostrarCartas() = return mano
	
	method agregarCarta(carta) = mano.add(carta)
	
	method puedeTirar() = return esMano
	
	method cambiarTurno(){ esMano = not esMano }
	
	method tirarCarta(carta){
		mano.delete(carta)
		tablero.agregarCartaMesa(carta)
	}
	
	method puntajeTotal() = return mano.sum( {x => x.saberValor()} )
}
