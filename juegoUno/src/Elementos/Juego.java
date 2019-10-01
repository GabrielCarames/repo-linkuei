package Elementos;

public class Juego {
	static Carta unoRojo = new Carta(1);
	static Jugador Lucas = new Jugador(true);
	
	public static void main(String[] args) {
		Lucas.agregarCarta(unoRojo);
		System.out.print(Lucas.mostrarMano());
		System.out.print(unoRojo.getNombre());
	}
}
