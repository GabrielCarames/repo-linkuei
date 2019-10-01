package Elementos;

public class Carta{
	private int numero;
    private String nombre;
    
    public Carta(int _numero){
        this.numero = _numero; 
        if(numero == 1)
        	nombre = "Rojo";
        if(numero == 2)
        	nombre = "Verde";
    }
    public int getNumero() {
    	return this.numero;
    }
    public String getNombre(){
        return this.nombre + this.numero;
    }

}
