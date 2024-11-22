package System;


/**
 * @version 1.0
 * @created 20-nov.-2024 10:03:00 p. m.
 */
public class Prestamos {

	private string estado;
	private date fecha_fin;
	private date fecha_inicio;
	private int id_prestamo;
	private int id_usuario;
	private int monto;
	private int tasa_interes;
	public Cliente m_Cliente;

	public Prestamos(){

	}

	public void finalize() throws Throwable {

	}

	public string actualizarEstado(){
		return "";
	}

	public boolean aprobarPrestamo(){
		return false;
	}

	public int calcularIntereses(){
		return 0;
	}

}