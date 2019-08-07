import Canales.*

object television{
	const canales = #{disneyChannel, nationalGeographic, cartoonNetwork}
	const canalesFavoritos = #{}
	var estado = false
	
	method prender(){
		if(not estado)
			estado = true
	}
	method apagar(){
		if(estado)
			estado = false
		
	}
	
	method mostrarCanales(){
		return canales
	}
	
	method totalDeCanales(){
		return canales.size()
	}
	
	method canalesDisponibles(){
		if(estado)
			return canales.count({canal => canal.saberEstado()})
		else return false
	}
	
	
	method prohibirCanal(nombre){
		if(estado)
			canales.remove(nombre)
	}
	
	method agregarCanal(nombre){
		if(estado)
			canales.add(nombre)
	}
	
	method agregarCanalAfavoritos(nombre){
		if(estado)
			canalesFavoritos.add(nombre)
	}
	
	method eliminarCanalDefavoritos(nombre){
		if(estado)
			canalesFavoritos.remove(nombre)
	}
}
