package dao;

import apoio.ConexaoBD;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProjetoDAO {
    public boolean insereProjeto(String sql) throws SQLException {
        try {
            ConexaoBD conexao = new ConexaoBD();
            conexao.insereDB(sql);
            return true;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBD.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
        
    public ResultSet consultaProjeto(String sql) throws SQLException {
        try {
            ConexaoBD conexao = new ConexaoBD();
            ResultSet resultado = conexao.buscaDB(sql);
            return resultado;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBD.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    
    public boolean excluiProjeto(String sql) throws SQLException {
        try {
            ConexaoBD conexao = new ConexaoBD();
            conexao.insereDB(sql);
            return true;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBD.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
