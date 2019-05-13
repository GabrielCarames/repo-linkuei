const maximaBateria = 100
const minimaBateria = 1

/* Red inalambrica */
object red{
	const verdad = true
	const falso = false
	var estado = false
	//var nombre = "soyironman"
	//var contrasenia = "avengersassamble"
	//var intensidad= 2.4  
	
	method activar(){
		if(estado) return "Ya esta prendida la red"	
		else{
			estado=true
			return "Ahora esta activada la red"
		}
	}
	method desactivar(){
		if(not estado) return "Ya esta desactivado"
		else{
			estado=false
			return "La red esta desactivada"
		}
	}
	method verificarEstado(){
		if(estado) return verdad   
		else return falso                                      
	}
}

/* Primer modelo */
object samsung{
	const samsungMaxMemory = 2000
	const samsungMinMemory = 1000
	const tarjetaDeRed = true	
	
	var memoria = samsungMinMemory
	var estado = false
	var conexion = false
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

	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
	method enviarMensaje(destinatario, mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	
	method conectar(){
		if(not tarjetaDeRed) return "No puede conectarse a la red sin una tarjeta de red"  
		if(not red.verificarEstado())  return "no podes conectarte a la red" 
		else{
			conexion = true 
			return "Conectado a la  red"  
		}
	}
	method desconectar(){
		if(not conexion) return "No esta conectado a la red nepe"
		else{
			conexion=false 
			return "Desconectado de la red nepe" 
		}
	}
} 

/* Segundo modelo */
object iphone{
	const iphoneMaxMemory = 2700
	const iphoneMinMemory = 600
	const tarjetaDeRed = true

	var memoria = iphoneMinMemory
	var estado = false
	var bateria = 60
	var nombreModelo = "iphone"
	var conexion = false
	
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

	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
	method enviarMensaje(destinatario,mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	
	method conectar(){
		if(not tarjetaDeRed) return "No puede conectarse a la red sin una tarjeta de red"  
		if(not red.verificarEstado())  return "no podes conectarte a la red" 
		else{
			conexion = true 
			return "Conectado a la  red"  
		}
	}
	method desconectar(){
		if(not conexion) return "No esta conectado a la red nepe"
		else{
			conexion=false 
			return "Desconectado de la red nepe" 
		}
	}
}

/* Tercer modelo */
object motorola{
	const motorolaMaxMemory	= 2200
	const motorolaMinMemory = 1000
	const tarjetaDeRed = false	

	var estado = false
	var bateria = 60 
	var memoria = motorolaMinMemory
	var nombreModelo = "motorola"
	var conexion = false

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

	method recibirMensaje(mensaje) = return "Nuevo mensaje para " + nombreModelo + ": " + mensaje
	method enviarMensaje(destinatario,mensaje){
		if(destinatario == nombreModelo) return "No podes enviarte un mensaje a vos mismo idiota"
		else return destinatario.recibirMensaje(mensaje)
	}
	
	method conectar(){
		if(not tarjetaDeRed) return "No puede conectarse a la red sin una tarjeta de red"  
		if(not red.verificarEstado())  return "no podes conectarte a la red" 
		else{
			conexion = true 
			return "Conectado a la  red"  
		}
	}
	method desconectar(){
		if(not conexion) return "No esta conectado a la red nepe"
		else{
			conexion=false 
			return "Desconectado de la red nepe" 
		}
	}
}
