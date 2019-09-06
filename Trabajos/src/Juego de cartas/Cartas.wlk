class Carta{
	var numero
	var valor
	var nombre
	
	constructor(_numero, _valor, palo){
		nombre = numero + palo
		numero = _numero
		valor = _valor
	}
	
	method saberValor() = return valor
	
	method saberNumero() = return numero
	
	method saberNombre() = return nombre
}