package Elementos;

public class Juego {
	static Carta unoRojo = new Carta(1);
	static Carta unaVerde = new Carta(2);
	static Jugador Lucas = new Jugador(true);
	
	public static void main(String[] args) {
		Lucas.agregarCarta(unoRojo);
		Lucas.agregarCarta(unaVerde);
		System.out.print(Lucas.mostrarMano());
	}
}
