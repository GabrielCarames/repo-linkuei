package Grafico;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.Color;
import java.awt.Dimension;

public class Ventana extends JFrame{
	
	private static final long serialVersionUID = 1L;

	JPanel menu = new JPanel();
	
	public Ventana(){
		setSize(600, 600);
		setTitle("El Uno");
		setLocationRelativeTo(null);
		setMinimumSize(new Dimension(300, 300));
		getContentPane().setBackground(Color.lightGray);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.modificarMenu();
		this.agregarBotones();
	}
	
	
	private void modificarMenu(){
		menu.setBackground(Color.cyan);
		this.getContentPane().add(menu);
		JLabel carta = new JLabel(new ImageIcon("img/ej.png"));
		menu.add(carta);
	}
	
	private void agregarBotones(){
		JButton btnJugar = new JButton("Jugar");
		btnJugar.setBounds(300, 200, 50, 100);
		menu.add(btnJugar);
	}
}
