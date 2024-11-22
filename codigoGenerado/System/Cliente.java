package System;


/**
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p. m.
 */
public class Cliente {

	private string apellido;
	private string email;
	private string id_cliente;
	private string nombre;
	private int telefono;
	private usuario tipo_usuario;

	public Cliente(){

	}

	public void finalize() throws Throwable {

	}

	public boolean abrirCuenta(){
		return false;
	}

	public boolean actualizarInformacion(){
		return false;
	}

	public boolean cerrarCuenta(){
		return false;
	}

	public void consultarCuentas(){

	}

	public boolean realizarTransferencia(){
		return false;
	}

	public boolean solicitarPrestamo(){
		return false;
	}

}