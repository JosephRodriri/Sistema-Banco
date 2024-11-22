package System;


/**
 * @author josep
 * @version 1.0
 * @created 20-nov.-2024 10:03:00 p. m.
 */
public class LogicCerrarCuenta implements CerrarCuenta {

	public Cliente m_Cliente;

	public LogicCerrarCuenta(){

	}

	public void finalize() throws Throwable {

	}

	/**
	 * 
	 * @param cuenta
	 */
	public int cerrarCuenta(Cuenta cuenta){
		return 0;
	}

}