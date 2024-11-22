package System;


/**
 * @author josep
 * @version 1.0
 * @created 20-nov.-2024 10:02:59 p.�m.
 */
public interface ActualizarTasasInteres {

    /**
     * @param cuenta
     */
    public default int actualizarCuenta(Cuenta cuenta) {
        return 0;
    }

}