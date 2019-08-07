object disneyChannel{
	var estado = false;
	var emitiendo = false
	var numero	= 26
	
	method activar(){
		if(not estado)
			estado = true
	}
	method desactivar(){
		if(estado)
			estado = false		
	}
	
	method emitir(str){
		if((not emitiendo) and str)
			emitiendo = true
		else
			emitiendo = false
		
	}
	
	method saberEstado() = return estado
	method saberNumero() = return numero
}

object nationalGeographic{
	var estado = false;
	var emitiendo = false
	var numero	= 40
	
	method activar(){
		if(not estado)
			estado = true
	}
	method desactivar(){
		if(estado)
			estado = false		
	}
	
	method emitir(str){
		if((not emitiendo) and str)
			emitiendo = true
		else
			emitiendo = false
		
	}
	
	method saberEstado() = return estado
	method saberNumero() = return numero
}

object cartoonNetwork{
	var estado = false;
	var emitiendo = false
	var numero	= 25
	
	method activar(){
		if(not estado)
			estado = true
	}
	method desactivar(){
		if(estado)
			estado = false		
	}
	
	method emitir(str){
		if((not emitiendo) and str)
			emitiendo = true
		else
			emitiendo = false
		
	}
	
	method saberEstado() = return estado
	method saberNumero() = return numero
}