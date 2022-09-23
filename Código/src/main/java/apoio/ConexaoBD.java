package apoio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexaoBD {
    String url = "jdbc:postgresql://localhost:5432/projetoVII";
    String user = "postgres";
    String password = "postgres";
    boolean resultado;
    
    public boolean insereDB(String sql) throws SQLException, ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            PreparedStatement st = conn.prepareStatement(sql);
            resultado = st.execute(sql);
            return resultado;
        } catch (SQLException e) {
            System.out.println("Aconteceu o seguinte erro: " + e);
            return resultado;
        }
    }
    
    public ResultSet buscaDB(String sql) throws SQLException, ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            return rs;
        } catch (SQLException e) {
            System.out.println("Aconteceu o seguinte erro: " + e);
            return null;
        }
    }
    
    public boolean existeUsuarioBanco(String sql) throws ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet resultSet = st.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            System.out.println("Aconteceu o seguinte erro: " + e);
            return false;
        }

    }
}
