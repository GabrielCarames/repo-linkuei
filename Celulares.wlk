const maximaBateria 	= 100

/* Primer modelo */
object samsung{
	const samsungMaxMemory 	= 2000
	var estado = false
	var bateria = 50 
	var memoria = 1000
	
	method prender(){
		if(estado) return 'El celular ya está prendido'
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya está apagado'
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == maximaBateria) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad, flash){
		if(estado){
			if(memoria > samsungMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				if(flash) bateria -= cantidad*0.04
				else bateria -= cantidad*0.03
				if(bateria < 1){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s con flash: ' + flash	
			}
		}else return 'El celular está apagado'
	}
	method eliminarFoto(cantidad){
		if(estado){
			if(memoria < 1) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
} 

/* Segundo modelo */
object iphone{
	const iphoneMaxMemory	= 2700
	var estado = false
	var bateria = 60 
	var memoria = 600
	
	method prender(){
		if(estado) return 'El celular ya está prendido'
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya está apagado'
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == maximaBateria) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad, flash){
		if(estado){
			if(memoria > iphoneMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				if(flash) bateria -= cantidad*0.03
				else bateria -= cantidad*0.02
				if(bateria < 1){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s con flash: ' + flash	
			}
		}else return 'El celular está apagado'
	}
	method eliminarFoto(cantidad){
		if(estado){
			if(memoria < 1) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
}
/* Tercer modelo */
object motorola{
	const motorolaMaxMemory	= 2200
	var estado = false
	var bateria = 60 
	var memoria = 1000
	method prender(){
		if(estado) return 'El celular ya está prendido'
		else{
			estado = true
			return 'El celular se prendio'
		}
	}
	method apagar(){
		if(not estado) return 'El celular ya está apagado'
		else{
			estado = false
			return 'Celular apagado'	
		}
	}
	method bateriaActual(){
		return 'La bateria actual es: ' + bateria + "%"
	}
	method cargarBateria(cantidad){
		if(bateria == maximaBateria) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > 100) bateria = 100
			else bateria += cantidad
			return 'Carga exitosa'
		}
	}
	method sacarFoto(cantidad){
		if(estado){
			if(memoria > motorolaMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				bateria -= cantidad*0.04
				if(bateria < 1){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s'
			}
		}else return 'El celular está apagado'
	}
	method eliminarFoto(cantidad){
		if(estado){
			if(memoria < 1) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
}
