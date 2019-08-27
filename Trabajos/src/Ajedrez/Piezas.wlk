import Tablero.*

class Pieza{
	var fila
	var columna
	var color
		
	constructor(_columna, _fila, _color){
		columna = _columna
		fila = _fila
		color = _color
	}
	
	method puedeMoverseHacia(x, y)
	
	method cuantoPuntajeGana(x, y){
		if(self.puedeMoverseHacia(x, y)){
			const pieza = tablero.identificarPieza(x, y)
			return pieza.valorPieza()
		}
		return 0
	}
	
	method colorPieza(){ return color }

	method equipoDistinto(pieza){ return (self.colorPieza() != pieza.colorPieza()) }
	
	method coincidePosicion(_columna, _fila){ return (columna == _columna and fila == _fila) }
}

class Rey inherits Pieza{
	const tipo = 6
	const valor = 4
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	method verificarRango(x, y){
		if(columna == x and (fila - y).abs() == 1)
			return true
		if(fila == y and (columna - x).abs() == 1)
			return true
		if((fila - y).abs() == 1 and (columna - x).abs() == 1)
			return true
		return false
	}
	
	override method puedeMoverseHacia(x, y){
		if(columna == x and fila == y)
			return false
		if(self.verificarRango(x, y)){
			if(tablero.hayPiezaEn(x, y)){
				const pieza = tablero.identificarPieza(x, y)
				if(pieza.colorPieza() == self.colorPieza())
					return false
				return true
			}
		}
		return false
	}
}


class Peon inherits Pieza{
	const tipo = 1
	const valor = 1
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	method movimientoInicial(){
		if(color)
			return 2
		else 
			return 7
	}
	
	override method puedeMoverseHacia(x, y){
		if(tablero.hayPiezaEn(x, y)){
			if((fila - y).abs() == 1 and (columna - x).abs() == 1){
				const pieza = tablero.identificarPieza(x, y)
				return (not pieza.colorPieza() == self.colorPieza())
			}
		}
		if(columna != x)
			return false
		if(fila == self.movimientoInicial() and ((fila - y).abs() == 1 or (fila - y).abs() == 2))
			return true
		return false
	}
}
