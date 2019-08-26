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
	const verificar = {x1 , y1 , x2, y2 => if((x1 - x2).abs() != 1 or (y1 - y2).abs() != 1) false else true}
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	override method puedeMoverseHacia(_columna, _fila){
		return (verificar.apply(columna, fila, _columna, _fila))
	}
	
}


class Peon inherits Pieza{
	const tipo = 1
	const valor = 1
	
	const verificar = {y1, y2 , m => if((y1 - y2).abs() != m) false}
	
	method tipoPieza(){ return tipo }
	
	method valorPieza(){ return valor }
	
	method movimientoInicial(){
		if(color)
			return (fila == 2)
		else
			return (fila == 7)
	}
	override method puedeMoverseHacia(_columna, _fila){
		var a = 0
		if(self.movimientoInicial())
			a = 2
		else 
			a = 1
		return (verificar.apply(fila, _fila, a))
	}
}
