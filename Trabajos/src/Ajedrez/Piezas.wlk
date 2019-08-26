import Tablero.*

class Pieza{
	var fila
	var columna
	var color
	
	constructor(_columna, _fila, _color){
		fila = _fila
		columna = _columna	
		color = _color
	}
	
	method movimientoInicial()
	
	method puedeMoverseHacia(_columna, _fla)
	
	method colorPieza(){ return color }

	method equipoDistinto(pieza){ return (self.colorPieza() != pieza.colorPieza()) }
	
	method coincidePosicion(_columna, _fila){ return (columna == _columna and fila == _fila) }
}

class Rey inherits Pieza{
	const tipo = 6
	const valor = 4
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	override method movimientoInicial(){ return (fila == 1)	}
	
	override method puedeMoverseHacia(_columna, _fila){
		if((_columna != columna + 1 or _columna != columna - 1))
			return false
		if(_fila != fila + 1 or _fila != fila - 1)
			return false
		if(tablero.hayPiezaEn(_columna, _fila)){
			if(not self.equipoDistinto(tablero.piezaIdentificada(_columna, _fila)))
				return false
			tablero.eliminarPieza(tablero.piezaIdentificada(_columna, _fila))
		}
		columna = _columna
		fila = _fila
		return true
	}
	
}
