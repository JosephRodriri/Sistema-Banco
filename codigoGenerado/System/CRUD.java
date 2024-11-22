package System;


/**
 * @author josep
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p. m.
 */
public interface CRUD {

	/**
	 * 
	 * @param cuenta
	 */
	public int Actualizar(Cuenta cuenta);

	/**
	 * 
	 * @param cuenta
	 */
	public int Borrar(Cuenta cuenta);

	/**
	 * 
	 * @param cuenta
	 */
	public int Crear(Cuenta cuenta);

	/**
	 * 
	 * @param cuenta
	 */
	public int Leer(Cuenta cuenta);

}