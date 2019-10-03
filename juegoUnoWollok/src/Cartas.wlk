class Carta{
	var numero
	var color
	
	constructor(_numero, _color){
		numero = _numero
		color = _color
	}
	
	method getNumero(){ return numero }
	
	method getColor(){ return color}
	
	method getNombre(){
		var colorString
		if(color == 0)
			colorString = "Rojo"
		if(color == 1)
			colorString = "Azul"
		if(color == 2)
			colorString = "Verde"
		if(color == 3)
			colorString = "Amarillo"
		return colorString
	}
}

const hola = new Carta(1, 2)