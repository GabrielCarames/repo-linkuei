object colectivo{
	const si = true
	const no = false

	const pasajeroMaximo = 100
	const pasajeroMinimo = 1
	const combustibleMaximo = 100
	const combustibleMinimo = 0
	const maximaParada = 5
	const minimaParada = 0
	const maxAsientos = 70
	
	const haciaInicio = 0
	const haciaTerminal = 1
	
	var totalPersonas = 0
	var personasParadas  = 0
	var personasSentadas = 0
	
	var direccion = haciaTerminal
	var numeroParada = minimaParada
	var combustible = combustibleMaximo

	method pasajerosActual(){
		totalPersonas = personasParadas + personasSentadas
		console.println("Personas paradas " + personasParadas)	
		console.println("Personas sentadas " + personasSentadas)	
		console.println("El total de pasajeros son " + totalPersonas)	
	}

	method combustibleActual() = return combustible
	method consumirCombustible(km){
		combustible -= km * 10 + totalPersonas * 0.2 /* 10 corresponde a los litros */
	}
	method hayCombustible(){
		if(combustible <= combustibleMinimo){
			combustible = 0
			return no 
		}else return si
	}

	method establecerDireccion(){
		if(numeroParada == maximaParada and direccion == haciaTerminal) direccion = haciaInicio
		else if(numeroParada == minimaParada and direccion == haciaInicio) direccion = haciaTerminal
	}
	method establecerParada(km){
		if(direccion == haciaTerminal) numeroParada += km
		else numeroParada -= km
	}
	method verificarDestino(destino){
		if(destino > maximaParada or destino < minimaParada) return no
		else return si
	}
	method establecerPasajeros(cantidad){
		if(totalPersonas + cantidad < pasajeroMaximo){
			if(personasSentadas + cantidad > maxAsientos) personasParadas += (personasSentadas + cantidad) - maxAsientos
			else personasSentadas += cantidad
			totalPersonas = personasSentadas + personasParadas
		}else console.println("No queda espacio para más personas")
	}

	method avanzar(km){
		if(not self.verificarDestino(km)) return "No podes avanzar esos km"
		if(not self.verificarCombustible()) return "Ya no queda más combustible"
		else{
			self.establecerPasajeros(personas.subir())
			self.establecerDireccion()
			self.establecerParada(km)
			self.consumirCombustible(km)
			self.verificarCombustible()
			return "Se llego a la estacion: " + numeroParada
		}
	}
}

/* Personas a subir */
object personas{
	var cantidadASubir = 10
	var cantidadABajar = 0
	method establecerTotalAsubir(cantidad){ cantidadASubir = cantidad }
	method establecerTotalABajar(cantidad){ cantidadABajar = cantidad }
	method subir(){
		cantidadASubir -= cantidadABajar
		return cantidadASubir
	}
	method bajar() = return cantidadABajar
}
