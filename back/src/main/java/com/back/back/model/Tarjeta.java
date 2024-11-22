package System;


/**
 * @version 1.0
 * @created 20-nov.-2024 10:03:00 p. m.
 */
public class Tarjeta {

	/**
	 * @version 1.0
	 * @created 20-nov.-2024 10:03:00 p. m.
	 */
	public class T debito {

		private boolean estado;
		private int id_tdebito;
		private int id_usuario;
		private money monto;

		public T debito(){

		}

		public void finalize() throws Throwable {

		}

		public int realizarPago(){
			return 0;
		}

		public int realizarRetiro(){
			return 0;
		}

	}

	/**
	 * @version 1.0
	 * @created 20-nov.-2024 10:03:00 p. m.
	 */
	public class T credito {

		private money debe;
		private date fecha_vencimiento;
		private int id_tcredito;
		private int limite_credito;

		public T credito(){

		}

		public void finalize() throws Throwable {

		}

		public int aumentarLimite(){
			return 0;
		}

		public int consultarCredito(){
			return 0;
		}

		public int consultarMonto(){
			return 0;
		}

	}

	private int id_tarjeta;
	private int id_usuario;
	private int numero_tarjeta;
	private int tipo_tarjeta;
	public T debito m_T debito;
	public T credito m_T credito;
	public Cliente m_Cliente;

	public Tarjeta(){

	}

	public void finalize() throws Throwable {

	}

	public boolean activarTarjeta(){
		return false;
	}

	public boolean bloquearTarjeta(){
		return false;
	}

	public boolean consultarSaldo(){
		return false;
	}

}