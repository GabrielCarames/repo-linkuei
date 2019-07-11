object poligono{
	/* Expresión: saca el mayor de 3 datos */
	const mayor = { x , y, z => if(x > y and x > z) x else if(y > x and y > z) y else z }
	
	/* Declaración de los lados */
	var a = 0
	var b = 0
	var c = 0

	/* Setter para cada lado */
	method establecerLados(_a, _b, _c){
		a = _a
		b = _b
		c = _c
	}
	
	/* Verifica si es un Triangulo */
	method esTriangulo(){
		if(mayor.apply(a,b,c) == a) return (mayor.apply(a,b,c) < (b+c))
		if(mayor.apply(a,b,c) == b) return (mayor.apply(a,b,c) < (a+c))
		if(mayor.apply(a,b,c) == c) return (mayor.apply(a,b,c) < (a+b))
		return false
	}
	
	method esEquilatero() = return ((a == b) and (b == c))
	
	method esEscaleno() =  return (a != b and b != c and c != a)
	
	method esIsosceles(){
		if(self.esEquilatero()) return false
		else return (a == b or b == a or a == c or b == c)
	}
}
