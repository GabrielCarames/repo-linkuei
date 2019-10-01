package Elementos;

import java.util.*;

public class Jugador{
	private boolean esMano;
	
    Set <Carta> cartasEnMano = new HashSet<Carta>();
    
	public Jugador(boolean _esMano){
		this.esMano = _esMano;
	}
	
	public int mostrarMano(){
		for (Carta x : cartasEnMano) 
			System.out.print(x.getNombre());
		return cartasEnMano.size();
	}
	
	public void agregarCarta(Carta carta){
		cartasEnMano.add(carta); 
	}
	
	public boolean getMano(){
		return this.esMano;
	}
	
	public void tirarCarta(Carta cartaTirada){
		cartasEnMano.remove(cartaTirada);
	}
}
