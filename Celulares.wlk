/* Primer modelo */
object samsung{
	var estado = 'apagado' 
	method prender(){
		estado = 'encendido'
		return 'Celular encendido'
	}
	method apagar(){
		estado = 'apagado'
		return 'Celular apagado'
	}
} 


