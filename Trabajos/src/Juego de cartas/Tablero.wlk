import Cartas.*

object tablero{
	// Prueba del rango, añade 12 cartas al mazo.
	const mazo = (1 .. 12).map({x => new Carta(x, x)})
	const mesa = []
	const jugadores = #{}
	
	// Estas expresiones serán temporales
	const agregarCarta = {x, y => x.add(y) }
	const eliminarCarta = {x, y => x.delete(y) }
	
	method crearCarta(a, b){
		return new Carta(a, b)
	}
	
	method quienTira(){ return jugadores.any( {x => x.puedeTirar()} ) }
	
	method puntajeDeMesa(){ return mesa.sum( {x => x.saberValor()} ) }
	
	method hayEscobaDeMano(){ return (self.puntajeDeMesa() == 15) }
	
	method darCarta(jugador, carta){
		mazo.delete(carta)
		jugador.agregarCarta(carta)
	}
	
	method agregarCarta(donde, carta) = agregarCarta.apply(donde, carta)
	
	method eliminarCarta(donde, carta) = eliminarCarta.apply(donde, carta)
	
	method mostrarMazo(){ return mazo }
	method mostrarMesa(){ return mesa }
	
	/*
	 	No se porque no me da bola al ejecutarlo en el programa.
		method mostrar(lista){ return lista }
	*/
}
