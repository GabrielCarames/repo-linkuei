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
	
	method verificarMovimiento(_columna, _fila){
		if(tablero.hayPiezaEn(_columna, _fila)){
			const piezaEncontrada = tablero.identificarPieza(_columna, _fila)
			if(not piezaEncontrada.equipoDistinto())
				return false
			else{
				tablero.eliminarPieza(piezaEncontrada)
				return true
			}
		}else
			return true
	}
	
	method movimientoInicial()
	
	method colorPieza(){
		return color
	}

	method equipoDistinto(pieza){
		return (pieza.colorPieza() != self.colorPieza())
	}
	
	method coincidePosicion(_columna, _fila){
		return (columna == _columna and fila == _fila)
	}
	
	method valorNulo(dato){ 
		return (dato == 0)
	}
}

class Peon inherits Pieza{
	const tipo = 6
	const valor = 4
	
	override method movimientoInicial(){
		return (fila == 1)
	}
	
	method avanzar(){
		if(not self.verificarMovimiento(columna, fila + 1))
			return false
		fila += 1
		return true
	}
	
	method retroceder(){
		if(self.movimientoInicial())
			return false
			
		if(not self.verificarMovimiento(columna, fila - 1))
			return false
		fila -= 1
		return true
	}

	method valorPieza() = return valor
	method tipoPieza() = return tipo
}

class Rey inherits Pieza{
	const tipo = 6
	const valor = 4
	
	override method movimientoInicial(){
		return (fila == 1)
	}
	
	method avanzar(){
		if(self.verificarMovimiento(columna, fila + 1))
			return false
		fila += 1
		return true
	}
	
	method retroceder(){
		if(self.movimientoInicial())
			return false
		if(not self.verificarMovimiento(columna, fila - 1))
			return false
		fila -= 1
		return true
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
*/
