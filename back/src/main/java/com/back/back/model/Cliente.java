package com.back.back.model;

/**
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p.�m.
 */
public class Cliente {

	private String apellido;
	private String email;
	private String id_cliente;
	private String nombre;
	private int telefono;
	private boolean tipo_usuario;

	public Cliente(){

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