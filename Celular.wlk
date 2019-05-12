object samsung{
	const samsungMaxMemory 	= 2000
	const samsungMinMemory 	= 1000
	const maximaBateria = 100
	const minimaBateria = 1
	const verdad = true
	const falso = false
	
	var estado = false
	var bateria = maximaBateria/2 
	var memoria = samsungMaxMemory
	
	method verificarMemoriaLlena(memory){
		if(memory > samsungMaxMemory) return verdad
		else return falso	
	}
	method verificarMemoriaMinima(memory){
		if(memory < samsungMinMemory) return verdad
		else return falso
	}
	
	method addMemory(cantidad) = return memoria + cantidad
	method removeMemory(cantidad) = return memoria - cantidad
	method addBatery(cantidad) = return bateria - cantidad
	method removeBatery(cantidad) = return bateria - cantidad
	
	method cargarBateria(cantidad){
		if(bateria == maximaBateria) return 'Bateria llena: ' + bateria + "%"
		else{
			if(cantidad + bateria > maximaBateria) bateria = maximaBateria
			else self.addBatery(cantidad)
			return 'Carga exitosa'
		}
	}
	
	method sacarFoto(cantidad){
		if(estado){
			if(self.verificarMemoriaLlena(memoria + cantidad * 0.4)) return 'Memoria llena, elimine fotos'
			else{
				self.addMemory(cantidad*0.4)
				self.addBatery(cantidad*0.4)
				if(bateria < minimaBateria) bateria = 0
				return 'Se tomaron ' + cantidad + ' fotos'
			}
		}else return 'El celular está apagado'
	}

	method eliminarFoto(cantidad){
		if(estado){
			if(self.verificarMemoriaMinima(memoria - cantidad * 0.4)) return 'Ya no podes eliminar fotos'
			else{
				memoria -= cantidad*0.4
				return 'Se eliminaron: ' + cantidad + ' fotos' 
			}
		}else return 'El celular está apagado'
	}
}
