import Cartas.*

object tablero{
	const mazo = []
	const mesa = []
	const jugadores = #{}
	
	method quienTira(){ return jugadores.find( {x => x.puedeTirar()} ) }
	
	method cambiarTurnos(){ jugadores.forEach( {x => x.cambiarTurno()} ) }
	
	method puntajeDeMesa(){ return mesa.sum( {x => x.saberValor()} ) }
	
	method hayEscobaMano(){ return (self.puntajeDeMesa() == 15) }
	
	method sacarCartaDelMazo(){ return mazo.anyOne() }
	
	method darCarta(jugador, carta){
		const carta = self.sacarCartaDelMazo()
		mazo.remove(carta)
		jugador.agregarCarta(carta)
		return carta
	}
	
	method rellenarMesa(){
		const carta = self.sacarCartaDelMazo()
		mesa.add(carta)
		mazo.remove(carta)
	}
	
	method eliminarCartaMesa(carta){ mesa.remove(carta) }
		
	method limpiarMesa(){ mesa.clear() }
	
	method agregarCartaMesa(carta){
		mesa.add(carta)
		if(self.hayEscobaMano()){
			var jugador = self.quienTira()
			console.println(jugador + "hizo escoba de mano")
			jugador.agregarCarta(mesa)
			self.limpiarMesa()
		}
		self.cambiarTurnos()
	}
	
	method eliminarCartaMazo(carta){ mazo.remove(carta) }
	
	method agregarCartaMazo(carta){ mazo.add(carta) }
	
	method mostrarMazo(){ return mazo }
	
	method mostrarMesa(){ return mesa }
}
