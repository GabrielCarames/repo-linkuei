object poligono{
	/* Expresión: saca el mayor de 3 datos */
	const mayor = { x , y, z => if(x > y and x > z) x else if(y > x and y > z) y else z }
	
	var property a = 0
	var property b = 0
	var property c = 0
	
	method esTriangulo(){
		if(mayor.apply(a,b,c) == a) return (mayor.apply(a,b,c) < (b+c))
		if(mayor.apply(a,b,c) == b) return (mayor.apply(a,b,c) < (a+c))
		if(mayor.apply(a,b,c) == c) return (mayor.apply(a,b,c) < (a+b))
		return false
	}
	method esEquilatero() = return (self.esTriangulo() and (a == b) and (b == c))
	method esEscaleno() = return (self.esTriangulo() and a != b and b != c and c != a)
	method esIsosceles() = retrn (not self.esEquilatero() and not self.esEscaleno())
}
