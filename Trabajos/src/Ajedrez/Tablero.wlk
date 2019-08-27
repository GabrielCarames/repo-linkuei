object tablero{
	const piezas = []
	
	const piezasBlancas = { piezas.filter({pieza => pieza.colorPieza()}) }
	
	const piezasNegras = { piezas.filter({pieza => not pieza.colorPieza()}) }
	
	const sacarTotal = { equipo => equipo.sum({pieza => pieza.valorPieza()}) }
	
	const contarPieza = { numeroPieza, max, equipo => 
		(equipo.filter({ pieza => pieza.tipoPieza() == numeroPieza}).size() > max)
	}

	const quienTieneVentaja = {x , y => if(x > y) 0 else if(x < y) 1 else 2}
	
	method addPieza(pieza){ piezas.add(pieza) }	
	
	method puntajeBlanco(){ return sacarTotal.apply(piezasBlancas.apply()) }
	
	method puntajeNegro(){ return sacarTotal.apply(piezasNegras.apply()) }
	
	method hayPiezaEn(_columna, _fila){ 
		return piezas.any({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method piezaIdentificada(_columna, _fila){
		return piezas.find({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method equipoConVentaja(){
		return quienTieneVentaja.apply(self.puntajeBlanco(), self.puntajeNegro())
	}
	
	method validarReyes(){
		if(contarPieza.apply(6, 1, piezasNegras.apply()))
			return false
		if(contarPieza.apply(6, 1, piezasBlancas.apply()))
			return false
		return true
	}
}
