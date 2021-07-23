package Main;

import GUI.Tablas;
import Manejadores.Conectar;

/**
 *
 * @author Massielle Coti
 */
public class Colegio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Conectar conexion = new Conectar();
        conexion.conectarDB();
        Tablas v = new Tablas();
        v.setVisible(true);
        v.setConnection(conexion.getConnection());
    }
}
    

