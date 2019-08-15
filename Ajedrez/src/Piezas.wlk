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
	
	method mover(_columna, _fila)
	
	method validarMovimiento(_columna, _fila)
	
	method colorPieza(){ 
		return color 
	}

	method equipoDistinto(pieza){
		return (pieza.colorPieza() != self.colorPieza())
	}
	
	method coincidePosicion(_columna, _fila){
		return (columna == _columna and fila == _fila)
	}
}

class Peon inherits Pieza{
	const valor = 1
	const tipo = 1
	 
	method esPeon(pieza){
		return (pieza.tipoPieza() == tipo)
	}
	
	override method validarMovimiento(_columna, _fila){
		if(_fila < fila  or _columna != columna)
			return false
		const piezaEncontrada = tablero.buscarPieza(_columna, _fila)
		if(self.equipoDistinto(piezaEncontrada) and piezaEncontrada.esPeon())
			return true
		return false
	}
	
	override method mover(_columna, _fila){
		columna = _columna
		fila = _fila
	}
	
	method valorPieza() = return valor
	method tipoPieza() = return tipo
}

/*
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
*/
*/
