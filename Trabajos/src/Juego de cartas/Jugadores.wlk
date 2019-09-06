class Jugador{
	const mano = []
	var esMano
	
	constructor(_esMano){ esMano = _esMano }
	
	method mostrarCartas() = return mano
	
	method sacarCarta(carta) = mano.delete(carta)
	
	method agregarCarta(carta) = mano.add(carta)
	
	method puedeTirar() = return esMano
	
	method puntajeTotal() = return mano.sum( {x => x.saberValor()} )
}