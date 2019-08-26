
object tablero{
	const piezas = []
	
	const quienTieneVentaja = {x , y => if(x > y) 0 else if(x < y) 1 else 2}
	
	method piezasa() = return piezas
	
	method addPieza(pieza){ piezas.add(pieza) }	
	
	method eliminarPieza(pieza){ piezas.remove(pieza) }
	
	method puntajeBlanco(){ 
		const piezasBlancas = piezas.filter({pieza => pieza.colorPieza()})
		return piezasBlancas.sum({pieza => pieza.valorPieza()})
	}
	
	method puntajeNegro(){
		const piezasNegras = piezas.filter({pieza => not pieza.colorPieza()})
		return piezasNegras.sum({pieza => pieza.valorPieza()})
	}
	
	method hayPiezaEn(_columna, _fila){ 
		return piezas.any({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method piezaIdentificada(_columna, _fila){
		return piezas.find({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	
	method equipoConVentaja(){
		return quienTieneVentaja.apply(self.puntajeBlanco(), self.puntajeNegro())
	}
	
	method verificarPiezas(){
		// Si el tablero es válido..
	}
}
