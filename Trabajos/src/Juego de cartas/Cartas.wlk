class Carta{
	var numero
	var valor
	var palo
	var nombre = "xD"
	
	constructor(_numero, _palo){
		numero = _numero
		palo = _palo
		valor = numero
		if(numero > 10 and numero < 12)
			valor -= 2
	}
	
	method saberValor(){ return valor }
	
	method saberNumero(){ return numero }
	
	method sacarSujeto(){
		var sujeto
		sujeto = numero
		if(numero == 12) 
			sujeto = "Rey"
		if(numero == 11) 
			sujeto = "Caballo"
		if(numero == 10) 
			sujeto = "Sota"
		if(numero == 1) 
			sujeto = "As"
		return sujeto
	}
	
	method sacarPreposicion(){
		var preposicion
		if(palo == 1) 
			preposicion = "de Copas"
		if(palo == 2)
			preposicion = "de Bastos"
		if(palo == 3)
			preposicion = "de Espadas"
		if(palo == 4)
			preposicion = "de Oros"
		return preposicion
	}
	method saberNombre(){
		nombre = "" + self.sacarSujeto() + " " + self.sacarPreposicion()
		return nombre
	}
}
