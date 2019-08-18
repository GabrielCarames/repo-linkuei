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
	
	method movimientoInicial()
	
	method esIgual(pieza)
	
	/* method mover(x, y)  Sin uso todavia */

	method puedeAvanzar(x, y)
	
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
	const valor = 1
	const tipo = 1
	 
	override method esIgual(pieza){
		return (pieza.tipoPieza() == tipo)
	}
	
	override method movimientoInicial(){
		return (fila == 2)
	}

	override method puedeAvanzar(x, y){
		return (tablero.hayPiezaEn(x, y))
	}
	
	method moverIzquierdoDiagonal(){
		if(self.movimientoInicial())
			return false
		if(not self.puedeAvanzar(columna - 1, fila + 1))
			return false
		else{
			const piezaEncontrada = tablero.identificarPieza(columna - 1, fila - 1)
			if(not piezaEncontrada.equipoDistinto())
				return false
			fila += 1
			columna -= 1
			return true
		}
	}

	method moverHaciaAdelante(cantidad){
		if(self.valorNulo(cantidad))
			return false
			
		if(self.movimientoInicial() and cantidad > 2)
			return false
			
		if(not self.movimientoInicial() and cantidad > 1)
			return false
		
		/* Siendo un peon no puede avanzar si hay una pieza de cualquier tipo adelante */
		if(not self.puedeAvanzar(columna + cantidad, fila))
			return false
		
		columna += valor
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

class Rey inherits Pieza{
	const tipo = 6
	
	method tipoPieza() = return tipo
}
*/
