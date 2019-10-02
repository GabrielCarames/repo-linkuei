package Grafico;

import Elementos.Carta;
import Elementos.Jugador;

public class Juego {
	static Carta unoRojo = new Carta(1);
	static Carta unaVerde = new Carta(2);
	static Jugador Lucas = new Jugador(true);

	
	public static void main(String[] args) {
		Lucas.agregarCarta(unoRojo);
		Lucas.agregarCarta(unaVerde);
		System.out.print(Lucas.mostrarMano());
		Ventana v1 = new Ventana();
		v1.setVisible(true);
	}
}
