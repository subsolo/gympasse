/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.Aluno;
import Model.Conexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author geicyane.ruppel
 */
public class AlunoDAO {

    public void insereAluno(Aluno aluno){

            Conexao conn = new Conexao();
            conn.insert("INSERT INTO aluno (matricula, nome, celular)"
                    + "values ("+aluno.getMatricula()+",'"+aluno.getNome()+"','"+aluno.getCelular()+"')");
    }

    public ArrayList<Aluno> listaAluno(){
        ArrayList<Aluno> arAluno = new ArrayList<Aluno>();
 
        try {
            Conexao conn = new Conexao();
            ResultSet rs = conn.select("SELECT * FROM aluno");

            while(rs.next()) {
                    arAluno.add(new Aluno(rs.getInt("matricula"), rs.getString("nome"), rs.getString("celular")));
            }

            return arAluno;
        } catch(SQLException ex) {
            System.out.println("Erro: Erro ao buscar aluno");
        }
        
        return arAluno;
    }   
}
