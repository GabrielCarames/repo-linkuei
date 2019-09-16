import Tablero.*
class Jugador{
	const mano = []
	var esMano
	
	constructor(_esMano){ esMano = _esMano }
	
	method mostrarCartas() = return mano
	
	method agregarCarta(carta) = mano.add(carta)
	
	method puedeTirar() = return esMano
	
	method cambiarTurno(){ esMano = not esMano }
	
	method tieneEscoba(){ 
		const puntaje = mano.sum({ x => x.saberValor() })
		return (puntaje == 15)
	}
	
	method agarrarCarta(carta){
		tablero.eliminarCartaMesa(carta)
		mano.add(carta)
		if(self.tieneEscoba()){
			console.println(self + "ha hecho escoba de mano")
			tablero.cambiarTurnos()
			tablero.limpiarMesa()
		}
	}
	
	method puntajeTotal() = return mano.sum( {x => x.saberValor()} )
}
