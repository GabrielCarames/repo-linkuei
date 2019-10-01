package Elementos;

public class Carta{
	private int numero;
    private String nombre;

    public Carta(int _numero){
        numero = _numero; 
    }

    public int getNumero() {
    	return numero;
    }

    public String getNombre(){
        return nombre + numero;
    }

}
