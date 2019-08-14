class Equipo{
	const piezas = []
	const piezasPerdidas = []
	var property puntaje = 0
	
	method addPieza(pieza){
		piezas.add(pieza)
	}
	
	method mostrarPiezas(){
		return piezas
	}
	
	method mostrarPuntaje(){
		return puntaje
	}
	
	method mostrarPiezasPerdidas(){
		return piezasPerdidas
	}
	
	method aumentarPuntos(pieza){
		puntaje  += pieza.valorPieza()	
	}
	
	method eliminarPieza(pieza){
		piezas.remove(pieza)
	}
	
	method addPiezaPerdida(pieza){
		piezasPerdidas.add(pieza)
	}
	
	
	method comerPieza(fila, columna){
		var piezaComida = piezas.find({pieza => pieza.coincidePosicion(fila, columna)})
		self.eliminarPieza(piezaComida)
		self.addPiezaPerdida(piezaComida)
		self.aumentarPuntos(piezaComida)
	}
}

object equipoBlanco inherits Equipo{}
object equipoNegro inherits Equipo{}

