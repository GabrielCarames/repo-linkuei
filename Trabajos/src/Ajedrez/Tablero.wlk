
object tablero{
	const piezas = []
	
	const totalBlanco = { piezas.filter({pieza => pieza.colorPieza()}).sum({pieza => pieza.valorPieza()}) }
	const totalNegro = { piezas.filter({pieza => not pieza.colorPieza()}).sum({pieza => pieza.valorPieza()}) }
	
	const quienTieneVentaja = {x , y => if(x > y) 0 else if(x < y) 1 else 2}
	
	method piezasa() = return piezas
	
	method addPieza(pieza){ piezas.add(pieza) }	
	
	method eliminarPieza(pieza){ piezas.remove(pieza) }
	
	method puntajeBlanco(){ return totalBlanco.apply() }
	
	method puntajeNegro(){ return totalNegro.apply() }
	
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
		
	}
}
