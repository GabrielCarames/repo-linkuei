import Tablero.*

class Jugador{
	const cartasEnMano = []
	var mano = false
	
	method getCantidadCartas(){ return cartasEnMano.size() }
	
	method cambiarTurno(){ mano = not mano }
	
	method getTurno(){ return mano }
	
	method mostrarCartas(){ return cartasEnMano }
	
	method agarrarCarta(carta){ cartasEnMano.add(carta) }
	
	method tirarCarta(n){
		const cartaTirada = cartasEnMano.get(n)
		const cartaEnMesa = tablero.getCartaMesa()
		
		
		if(cartaTirada.getColor() == cartaEnMesa.getColor() || cartaTirada.getNumero() == cartaEnMesa.getNumero())
			tablero.cambiarCartaEnMesa(cartaTirada)
		else
			console.println("Carta incorrecta")
		tablero.cambiarTurnos()
	}
}