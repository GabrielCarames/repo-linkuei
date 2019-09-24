import Tablero.*
class Jugador{
	const mano = []
	const monto = []
	var esMano
	
	constructor(_esMano){ esMano = _esMano }
	
	method tirarCarta(carta){
		if(self.puedeTirar()){
			mano.remove(carta)
			tablero.agregarCartaMesa(carta)
		}
	}
	
	method mostrarCartas(){ return mano }
	
	method agregarCarta(carta){ mano.add(carta) }
	
	method agregarCartaMonto(carta){ monto.add(carta) }
	
	method puedeTirar(){ return esMano }
	
	method cambiarTurno(){ esMano = not esMano }
	
	method puntajeTotalMonto(){ return monto.sum( {x => x.saberValor()} ) }

}
