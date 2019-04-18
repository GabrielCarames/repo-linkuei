/* Primer modelo */
object samsung{
	var bateria = 50 
	var estado = false
	method bateriaActual(){
		return bateria
	}
	method cargarBateria(cantidad){
		if(estado){
	 		bateria += cantidad 
	 		return 'Bateria cargada'
	 	}else{
	 		return 'El Celular esta apagado'
	 	}
	}
	
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*1.5
			return 'Captura hecha'
		}else{
			return 'El Celular esta apagado'
		}
	}
	method apagar(){
		estado = false
		return 'Celular apagado'
	}
} 
/* Segundo modelo */
object iphone{
	var bateria = 50 
	var estado = false
	method bateriaActual(){
		return bateria
	}
	method cargarBateria(cantidad){
		if(estado){
	 		bateria += cantidad 
	 		return 'Bateria cargada'
	 	}else{
	 		return 'El Celular esta apagado'
	 	}
	}
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*1.2
			return 'Captura hecha'
		}else{
			return 'El Celular esta apagado'
		}
	}
	method apagar(){
		estado = false
		return 'Celular apagado'
	}
} 
/* Tercer modelo */
object motorola{
	var bateria = 50 
	var estado = false
	method bateriaActual(){
		return bateria
	}
	method cargarBateria(cantidad){
		if(estado){
	 		bateria += cantidad 
	 		return 'Bateria cargada'
	 	}else{
	 		return 'El Celular esta apagado'
	 	}
	}
	
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*1.7
			return 'Captura hecha'
		}else{
			return 'El Celular esta apagado'
		}
	}
	method apagar(){
		estado = false
		return 'Celular apagado'
	}
}  
