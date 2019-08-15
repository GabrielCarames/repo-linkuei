object tablero{
	const piezas = []
	
	const empate = 3
	const equipoBlanco = 0
	const equipoNegro = 1
	
	method addPieza(pieza){ return piezas.add(pieza) }	
	
	method eliminarPieza(pieza){ piezas.remove(pieza) }
	
	method quienTieneVentaja(){
		if(self.puntajeBlanco() == self.puntajeNegro())
			return empate
		if(self.puntajeBlanco() > self.puntajeNegro())
			return equipoBlanco
		else 
			return equipoNegro
	}
	
	method puntajeBlanco(){
		var piezasBlancas = piezas.filter({pieza => pieza.equipo()})
		return piezasBlancas.sum({pieza => pieza.valorPieza()})
	}
	method puntajeNegro(){
		var piezasNegras = piezas.filter({pieza => not pieza.equipo()})
		return piezasNegras.sum({pieza => pieza.valorPieza()})
	}
}
