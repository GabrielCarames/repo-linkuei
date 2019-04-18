/* Primer modelo */
object samsung{
	var bateria = 50 
	var estado = false
	method bateriaActual(){
		return bateria
	}
	method cargarBateria(cantidad){
		if(bateria == 100){
			return 'Bateria llena'
		}else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
		}
		return bateria
	}
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.03
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
		if(bateria == 100){
			return 'Bateria llena'
		}else{
			if(cantidad+bateria > 100) bateria = 100
			else bateria += cantidad
		}
		return bateria
	}
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.02
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
		if(bateria == 100){
			return 'Bateria llena'
		}else{
			if(cantidad+bateria > 100) bateria = 100
			else bateria += cantidad
		}
		return bateria
	}
	method prender(){
		estado = true
		return 'El Celular se prendio'
	}
	method sacarFoto(cantidad){
		if(estado){ 
			bateria -= cantidad*0.04
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
