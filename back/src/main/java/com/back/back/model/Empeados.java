package com.back.back.model;



/**
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p.�m.
 */
public class Empeados {

	private String email;
	private int id_empleado;
	private String nombre;
	private String puesto;
	public Sucursales m_Sucursales;
	public Sistema m_Sistema;

	public Empeados(){

	}


	public boolean aprobarPrestamos(){
		return false;
	}

	public boolean atenderConsultas(){
		return false;
	}

	public boolean autorizarTransacciones(){
		return false;
	}

}