package com.back.back.model;


/**
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p.�m.
 */
public class Cuenta {

	private boolean estado;
	private float fecha_apertura;
	private int id_cliente;
	private int id_cuenta;
	private int numero_cuenta;
	private int saldo;
	public Cliente m_Cliente;

	public Cuenta(){

	}



	public boolean depositar(){
		return false;
	}

	public boolean retirar(){
		return false;
	}

	public boolean transferir(){
		return false;
	}

}