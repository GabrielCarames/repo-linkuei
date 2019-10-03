import Cartas.*
import Jugador.*

object tablero{
	const cartasEnMazo = []
	const jugadores = []
	
	var cartaEnMesa
	var indexTurno = 0
	
	method agregarJugador(jugador){ jugadores.add(jugador) }
	
	method getJugadores(){ return jugadores}
	
	method getCartaMesa(){ return cartaEnMesa }
	
	method mostrarMazo(){ return cartasEnMazo }
	
	method sizeMazo(){ return cartasEnMazo.size() }
	
	method jugadorConTurno(){ return jugadores.find({ x => x.getTurno()}) }
	
	method barajarMazo(){
		
		/* Establece el turno al primer jugador */
		jugadores.get(0).cambiarTurno()
		
		/* Cartas normales y especiales con color  */
		(0 .. 12).forEach({ 
				x => (0 .. 3).forEach({ 
					y => cartasEnMazo.add(new Carta(x, y)) 
			})
		})
		self.establecerCartaInicial()
		/* Cartas especiales (sin color)  */
		(13 .. 14).forEach({ 
			x => (0 .. 3).forEach({
				y => cartasEnMazo.add(new Carta(x, 4))
			})
		})
	}
	
	method cambiarTurnos(){
		jugadores.get(indexTurno).cambiarTurno()
		if(indexTurno == jugadores.size()-1)
			indexTurno = 0
		else
			indexTurno++
		jugadores.get(indexTurno).cambiarTurno()
	}
	
	method obtenerCartaDelMazo(){
		const carta = cartasEnMazo.anyOne()
		cartasEnMazo.remove(carta)
		return carta
	}
	
	method cambiarCartaEnMesa(carta){
		cartaEnMesa = carta
	}
	method establecerCartaInicial(){
		cartaEnMesa = self.obtenerCartaDelMazo()
		return cartaEnMesa
	}
	
	method repartirCartas(jugador){
		(0 .. 3).forEach({ 
			x => jugador.agarrarCarta(self.obtenerCartaDelMazo())
		})
	}
}
