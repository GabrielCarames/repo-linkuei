const maximaBateria = 100
const minimaBateria = 1

/* Primer modelo */
object samsung{
	const samsungMaxMemory = 2000
	const samsungMinMemory = 1000
	const tarjetaDeRed = true	/* Aún no se usará esta constante */
	
	var memoria = samsungMinMemory
	var estado = false
	var bateria = 50
	var nombreModelo = "samsung"
	
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
	method bateriaActual() = return 'La bateria actual es: ' + bateria + "%"
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
			if((memoria + cantidad * 0.4) > samsungMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				if(flash) bateria -= cantidad*0.04
				else bateria -= cantidad*0.03
				if(bateria < minimaBateria){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s con flash: ' + flash	
			}
		}else return 'El celular está apagado'

	}
	method eliminarFoto(cantidad){
		if(estado){
			if((memoria-cantidad*0.4) < samsungMinMemory) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
	method enviarMensaje(destinatario, mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
} 

/* Segundo modelo */
object iphone{
	const iphoneMaxMemory = 2700
	const iphoneMinMemory = 600
	const tarjetaDeRed = true	/* Aún no se usará ésta constante */
	
	var memoria = iphoneMinMemory
	var estado = false
	var bateria = 60
	var nombreModelo = "iphone"

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
	method bateriaActual() = return 'La bateria actual es: ' + bateria + "%"
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
			if((memoria + cantidad * 0.4) > iphoneMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				if(flash) bateria -= cantidad*0.03
				else bateria -= cantidad*0.02
				if(bateria < minimaBateria){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s con flash: ' + flash	
			}
		}else return 'El celular está apagado'
	}
	method eliminarFoto(cantidad){
		if(estado){
			if((memoria - cantidad*0.4) < iphoneMinMemory) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
	method enviarMensaje(destinatario,mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
}

/* Tercer modelo */
object motorola{
	const motorolaMaxMemory	= 2200
	const motorolaMinMemory = 1000
	const tarjetaDeRed = false	/* Aún no se usará ésta constante */
	
	var estado = false
	var bateria = 60 
	var memoria = motorolaMinMemory
	var nombreModelo = "motorola"
	
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
	method bateriaActual() = return 'La bateria actual es: ' + bateria + "%"
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
			if((memoria + cantidad * 0.4) > motorolaMaxMemory) return 'Memoria llena, elimine fotos'
			else{
				memoria += cantidad*0.4 	
				bateria -= cantidad*0.04
				if(bateria < minimaBateria){
					bateria = 0
					return self.apagar() + ', cargue el celular' 
				}
				return 'Se tomaron ' + cantidad + ' captura/s'
			}
		}else return 'El celular está apagado'
	}
	method eliminarFoto(cantidad){
		if(estado){
			if((memoria - cantidad*0.4) < motorolaMinMemory) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
	method enviarMensaje(destinatario,mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
}
