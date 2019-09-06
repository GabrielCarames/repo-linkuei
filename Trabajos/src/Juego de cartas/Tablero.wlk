object tablero{
	const mazo = []
	const mesa = []
	const jugadores = #{}
	
	// Estas expresiones serán temporales
	const agregarCarta = {x, y => x.add(y) }
	const eliminarCarta = {x, y => x.delete(y) }
	
	method quienTira() = return jugadores.any( {x => x.puedeTirar()} )
	
	method puntajeDeMesa() = return mesa.sum( {x => x.saberValor()} ) 
	
	method hayEscobaDeMano() = return (self.puntajeDeMesa() == 15) 
	
	method darCarta(jugador, carta){
		mazo.delete(carta)
		jugador.agregarCarta(carta)
	}
	
	method agregarCarta(donde, carta) = agregarCarta.apply(donde, carta)
	
	method eliminarCarta(donde, carta) = eliminarCarta.apply(donde, carta)
	
	method mostrar(lista) = return lista
	
}