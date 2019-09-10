class Carta{
	var numero
	var valor
	var nombre
	
	constructor(_numero, _valor, palo){
		if(_numero > 12 or numero < 1) 
			_numero = 1
		numero = _numero
		if(numero > 10 and numero < 12)
			numero -= 2
		nombre = numero + palo
		valor = _valor
	}
	
	method saberValor() = return valor
	
	method saberNumero() = return numero
	
	method saberNombre() = return nombre
}
