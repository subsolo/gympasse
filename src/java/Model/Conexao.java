/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author bruno.rosario
 */
public class Conexao {
    private static final String usuario = "root";
    private static final String senha = "root";
    private static final String banco = "jdbc:mysql://127.0.0.1/projetoaluno";
    private static final String driver = "com.mysql.jdbc.Driver";
    private Connection connection;

    public Conexao(){
        try{
            Class.forName(driver);
            connection = (Connection) DriverManager.getConnection(banco, usuario, senha);
        }
        catch(SQLException sqlex){
            System.out.println("Erro no banco");
        }
        catch(ClassNotFoundException cnfex){
            System.out.println("Classe não encontrada");
        }
    }
    


    public void insert(String query){
        try {
            PreparedStatement ps = this.connection.prepareStatement(query);
            ps.executeUpdate();   
        }catch(SQLException ex) {
            System.out.println("Erro: Insert deu ruim" + ex.getMessage());
        }
    }

    public ResultSet select(String query) throws SQLException{
        
        PreparedStatement ps = this.connection.prepareStatement(query);
        ResultSet rs = ps.executeQuery(); 
        return rs;
    
    }
}
