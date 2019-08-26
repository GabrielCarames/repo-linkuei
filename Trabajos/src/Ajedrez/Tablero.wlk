
object tablero{
	const piezas = []
	
	var puntosBlanco = piezas.filter({pieza => pieza.colorPieza()}).sum()
	var puntosNegro = piezas.filter({pieza => not pieza.colorPieza()}).sum() 
	
	/*
	 * 0 Equipo Blanco
	 * 1 Equipo Negro
	 * 3 Empate
	*/
	var equipoConVentaja = {equipo => if(puntosBlanco > puntosNegro) 0 else 1}
	
	const empate = 3
	
	method addPieza(pieza){ piezas.add(pieza) }	
	
	method eliminarPieza(pieza){ piezas.remove(pieza) }
	
	method puntajeBlanco(){ return puntosBlanco }
	
	method puntajeNegro(){ return puntosNegro }
	
	method hayPiezaEn(_columna, _fila){ 
		return piezas.any({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method piezaIdentificada(_columna, _fila){
		return piezas.find({pieza => pieza.coincidePosicion(_columna, _fila)})
	}
	
	method quienTieneVentaja(){
		if(equipoConVentaja != empate)
			return equipoConVentaja
		else
			return empate
	}
}
