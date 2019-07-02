object pasajeros{
	var property maxCapacidad = 50
	var	property total = 0
	
	method verificarCapacidad(){
		return (total+1 == maxCapacidad+1)
	}
	
	method capacidadMaxima(){
		return (total == maxCapacidad)
	}
	method aumentar(){
		total++;
	}
	method restar(cantidad){
		total -= cantidad
	}
	method bajarTodos(){
		total = 0
	}
	method actual() = return total
}