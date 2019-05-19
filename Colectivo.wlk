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
}

/* Personas a subir */
object personas{
  	var cantidadAsubir=0
  	var cantidadAbajar=0
  	method establecerTotalAsubir(cantidad){
		cantidadAsubir = cantidad
	}
	method establecerTotalAbajar(cantidad){
	        cantidadAbajar = cantidad
        }

} 
