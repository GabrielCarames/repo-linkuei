const si = true
const no = false

const ultimaParada = 5
const primeraParada = 0
const pasajerosMaximo = 50

object colectivo{
	var numeroParada = 1
	method subirPersona(sentado, destino){
		if(numeroParada == 0) return "No se suben personas en el inicio"
		else if(numeroParada == 5) return "No se suben personas en la terminal"
		else{
			if(self.hayPersonasAsubir() and pasajeros.totales() < pasajerosMaximo){
				pasajeros.aumentar(sentado)
				destino.aumentarPersonaBajar()
				recaudacion.cobrar(numeroParada)
				if(numeroParada == 1) thames.restarPersonaSubir()
				if(numeroParada == 2) liniers.restarPersonaSubir()
				if(numeroParada == 3) palermo.restarPersonaSubir()
				if(numeroParada == 4) saavedra.restarPersonaSubir()
				return sentado
			}else return "No se puede subir mas personas o el colectivo esta lleno"
		}
	}
	
	method hayPersonasAsubir(){
		if(numeroParada == 1){
			if(thames.totalAsubir() > 0) return si
			else return no
		}else if(numeroParada == 2){
			if(liniers.totalAsubir() > 0) return si
			else return no
		}else if(numeroParada == 3){
			if(palermo.totalAsubir() > 0) return si
			else return no
		}else if(numeroParada == 3){
			if(saavedra.totalAsubir() > 0) return si
			else return no
		}else return no
	}
}

object pasajeros{
	var sentados = 0
	var parados = 0
	var total = 0
	
	method aumentar(sentado){
		if(sentado) return sentados++
		else return parados++
	}
	method actual(){
		return parados + sentados
	}
	method totales(){
		total = parados + sentados
		return total
	}
	
}

object combustible{
	const maximoCombustible = 120
	const minimoCombustible = 1
	var litros = maximoCombustible
	
	method litrosActual() = return "La cantidad de litros es de" + litros
	method consumir(){
		litros -= 10 + pasajeros.totales() * 0.2
	}
	method verificar(){
		if(litros <= minimoCombustible){
			litros = 0
			return si
		}else return no
	}
}

object recaudacion{
	var dinero = 0
	method cobrar(parada){
		if(parada == primeraParada or parada == ultimaParada) dinero += 5
		else dinero += 20
	}
	method actual() = return "La recaudacion actual es de: " + dinero
}

object thames{
	var personasAsubir = 5
	var personasAbajar = 0
	method aumentarPersonaBajar() = personasAbajar++
	method restarPersonaSubir() = personasAsubir--
	method restarPersonaBajar() = personasAbajar--
	method totalAsubir() = return personasAsubir
	method totalAbajar() = return personasAbajar
}

object liniers{
	var personasAsubir = 5
	var personasAbajar = 1
	method aumentarPersonaBajar() = personasAbajar++
	method restarPersonaSubir() = personasAsubir--
	method restarPersonaBajar() = personasAbajar--
	method totalAsubir() = return personasAsubir
	method totalAbajar() = return personasAbajar
}
object palermo{
	var personasAsubir = 5
	var personasAbajar = 1
	method aumentarPersonaBajar() = personasAbajar++
	method restarPersonaSubir() = return personasAsubir--
	method restarPersonaBajar() = personasAbajar--
	method totalAsubir() = return personasAsubir
	method totalAbajar() = return personasAbajar
}
object saavedra{
	var personasAsubir = 5
	var personasAbajar = 1
	method aumentarPersonaBajar() = personasAbajar++
	method restarPersonaSubir() = personasAsubir--
	method restarPersonaBajar() = personasAbajar--
	method totalAsubir() = return personasAsubir
	method totalAbajar() = return personasAbajar
}
