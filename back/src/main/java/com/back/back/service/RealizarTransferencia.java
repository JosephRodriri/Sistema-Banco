package System;


/**
 * @author josep
 * @version 1.0
 * @created 20-nov.-2024 10:03:00 p. m.
 */
public interface RealizarTransferencia {

	/**
	 * 
	 * @param cuenta
	 */
	public int elegirCuenta(Cuenta cuenta);

	/**
	 * 
	 * @param cuenta
	 */
	public money elegirMonto(Cuenta cuenta);

}