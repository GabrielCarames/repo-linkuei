/* Primer modelo */
object samsung{
	var bateria = 50 
	var estado = false
	method prender(){
		if(estado) return 'El celular ya esta prendido' //si estado es verdadero informa que esta ya esta prendido
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya esta apagado' //si estado es falso informa que esta ya esta apagado
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == 100) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.03
			return 'se tomaron ' + cantidad + ' fotos'
		}else return 'El celular está apagado'
	}
} 
/* Segundo modelo */
object iphone{
	var bateria = 50 
	var estado = false
	method prender(){
		if(estado) return 'El celular ya esta prendido'
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya esta apagado'
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == 100) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.02
			return 'se tomaron ' + cantidad + ' fotos'
		}else return 'El celular está apagado'
	}
}
/* Tercer modelo */
object motorola{
	var bateria = 50 
	var estado = false
	method prender(){
		if(estado) return 'El celular ya esta prendido'
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya esta apagado'
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == 100) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.04
			return 'se tomaron ' + cantidad + ' fotos'
		}else return 'El celular está apagado'
	}
}
