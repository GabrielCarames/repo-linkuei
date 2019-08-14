import Equipos.*

class Pieza{
	var fila
	var columna
	var estado
	var color
	
	constructor(_columna, _fila, _color){
		columna = _columna	
		fila = _fila
		color = _color
		estado = true
	}
	
	method coincidePosicion(_columna, _fila){
		return (columna == _columna and fila == _fila)
	}
	
	method estadoPieza() = return estado
}

class Peon inherits Pieza{
	const valor = 1
	const tipo = 1
	 
	method valorPieza() = return valor
	
	method tipoPieza() = return tipo

	
	method verificarPosicion(){
		if(columna >= 1 and columna <= 8){
			if(color)
				if(fila != 2)
					estado = false
			else
				if(fila != 7)
					estado = false
		}
		return estado
	}
	
}

class Caballo inherits Pieza{
	const valor = 3
	const tipo = 2
	
	method valorPieza() = return valor
		
	method tipoPieza() = return tipo
	
}

class Alfil inherits Pieza{
	const valor = 3
	const tipo = 3
	
	method valorPieza() = return valor
	
	method tipoPieza() = return tipo	
}

class Torre inherits Pieza{
	const valor = 5
	const tipo = 4
	
	method tipoPieza() = return tipo	
	method valorPieza() = return valor
}

class Reina inherits Pieza{
	const valor = 9
	const tipo = 5
	
	method tipoPieza() = return tipo	
	method valorPieza() = return valor
}

class Rey inherits Pieza{
	const tipo = 6
	
	method tipoPieza() = return tipo
}