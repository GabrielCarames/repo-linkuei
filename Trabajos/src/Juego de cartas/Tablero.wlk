import Cartas.*

object tablero{
	const mazo = []
	const mesa = []
	const jugadores = #{}
	
	method quienTira(){ return jugadores.find( {x => x.puedeTirar()} ) }
	
	method cambiarTurnos(){ jugadores.map( {x => x.cambiarTurno() }) }
	
	method puntajeDeMazo(){ return mazo.sum( {x => x.saberValor()} ) }
	
	method puntajeDeMesa(){ return mesa.sum( {x => x.saberValor()} ) }
	
	method hayEscobaDeMano(){ return (self.puntajeDeMesa() == 15) }
	
	
	method darCarta(jugador, carta){
		mazo.delete(carta)
		jugador.agregarCarta(carta)
		return carta
	}
	
	method eliminarCartaMesa(carta){ mesa.delete(carta) }
		
	method agregarCartaMesa(carta){ 
		mesa.add(carta) 
		if(self.hayEscobaDeMano()){
			var jugador = self.quienTira()
			jugador.agregarCarta(mesa)
			mesa.clear()
		}
		self.cambiarTurnos()
	}
	
	method mostrar(x){ return x}
	
	method eliminarCartaMazo(carta){ mazo.delete(carta) }
	
	method agregarCartaMazo(carta){ mazo.add(carta) }
	
	method mostrarMazo(){ return mazo }
	
	method mostrarMesa(){ return mesa }
}
