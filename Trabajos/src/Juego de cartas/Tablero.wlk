import Cartas.*

object tablero{
	const mazo = (1 .. 12).map( { x => new Carta(x, (1 .. 4).anyOne()) } )
	const mesa = []
	const jugadores = #{}
	
	method quienTira(){ return jugadores.find( {x => x.puedeTirar()} ) }
	
	method cambiarTurnos(){ jugadores.forEach( {x => x.cambiarTurno()} ) }
	
	method puntajeDeMesa(){ return mesa.sum( {x => x.saberValor()} ) }
	
	method hayEscobaMano(){ return (self.puntajeDeMesa() == 15) }
	
	method darCarta(jugador){ return jugador.agregarCarta(self.sacarCartaDelMazo()) }
	
	method sacarCartaDelMazo(){ 
		const carta = mazo.anyOne()
		mazo.remove(carta)
		return carta
	}
	
	method accionarEscoba(){
		var jugador = self.quienTira()
		console.println(jugador + "se le da escoba de mano")
		jugador.agregarCartaMonto(mesa)
		self.limpiarMesa()
		self.cambiarTurnos()
	}
	
	method agregarCartaAleatoriaMesa(){
		if(mesa.size() <= 4){
			mesa.add(self.sacarCartaDelMazo())
			if(self.hayEscobaMano())
				self.accionarEscoba()
		}
	}
	
	method agregarCartaMesa(carta){ 
		mesa.add(carta)
		if(self.hayEscobaMano())
			self.accionarEscoba()
	}
	
	method repartir(jugador){
		jugador.agregarCarta(self.sacarCartaDelMazo())
		jugador.agregarCarta(self.sacarCartaDelMazo())
		jugador.agregarCarta(self.sacarCartaDelMazo())
		return jugador.mostrarCartas()
	}
	
	method rondaActiva(){ return (mazo.size() != 0) }
	
	method agregarJugador(jugador){ jugador.add(jugador) }
	
	method limpiarMesa(){ mesa.clear() }
	
	method mostrarMazo(){ return mazo }
	
	method mostrarMesa(){ return mesa }
}
