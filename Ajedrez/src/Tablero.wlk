object tablero{
	const piezas = []
	
	const equipoBlanco = 0
	const equipoNegro = 1
	const empate = 3
	
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
	
	method buscarPieza(_columna, _fila){
		return piezas.find({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method puntajeBlanco(){
		var piezasBlancas = piezas.filter({pieza => pieza.colorPieza()})
		return piezasBlancas.sum({pieza => pieza.valorPieza()})
	}
	
	method puntajeNegro(){
		var piezasNegras = piezas.filter({pieza => not pieza.colorPieza()}) /* Hace referencia a false (color negro) */
		return piezasNegras.sum({pieza => pieza.valorPieza()})
	}
}
