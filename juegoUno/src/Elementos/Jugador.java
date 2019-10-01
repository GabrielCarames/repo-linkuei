package Elementos;

import java.util.*;

public class Jugador{
	private boolean esMano;
	
    Set <Carta> cartasEnMano = new HashSet<Carta>();
    
	public Jugador(boolean _esMano){
		this.esMano = _esMano;
	}
	
	public int mostrarMano(){
		return cartasEnMano.size();
	}
	
	public void agregarCarta(Carta carta){
		cartasEnMano.add(carta); 
	}
	
	public boolean getMano(){
		return this.esMano;
	}
	
	
}
