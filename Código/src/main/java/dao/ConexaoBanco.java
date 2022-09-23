package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexaoBanco {
    public void conexao() throws SQLException {
        Connection c = null;
        try {
            Class.forName("org.postresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/projetoVII", "postgres", "postgres");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBanco.class.getName()).log(Level.SEVERE, null, ex);
            System.err.println(ex.getClass().getName() + ": " + ex.getMessage());
        }
        System.out.println("Banco de Dados Aberto");
    }
}
