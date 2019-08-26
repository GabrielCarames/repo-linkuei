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
	
	method puedeMoverseHacia(_columna, _fla)
	
	method colorPieza(){ return color }

	method equipoDistinto(pieza){ return (self.colorPieza() != pieza.colorPieza()) }
	
	method coincidePosicion(_columna, _fila){ return (columna == _columna and fila == _fila) }
}

class Rey inherits Pieza{
	const tipo = 6
	const valor = 4
	const verificar = {x , y => if((columna - x).abs() != 1 or (fila - y).abs() != 1) false else true}
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	override method puedeMoverseHacia(_columna, _fila){
		return (verificar.apply(columna, fila, _columna, _fila))
	}
	
}


class Peon inherits Pieza{
	const tipo = 1
	const valor = 1
	
	const verificar = {y, y2 , m => if((y - y2).abs() != m) false}
	const verificarRango = {y, color => if(color) if(y < fila) false else if(y > fila) false}
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	override method puedeMoverseHacia(_columna, _fila){
		if(not verificarRango.apply(_fila, color))
			return false
		var a = 0
		if(self.movimientoInicial())
			a = 2
		else 
			a = 1
		return (verificar.apply(fila, _fila, a))
	}
}
