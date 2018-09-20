/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author bruno.rosario
 */
public class Aluno {
    private int matricula;
    private String nome;
    private String celular;

    public Aluno(int matricula, String nome, String celular){
            this.setMatricula(matricula);
            this.nome = nome;
            this.celular = celular;
    }

    public void setMatricula(int matricula){
            this.matricula = matricula;
    }

    public int getMatricula(){
            return this.matricula;
    }

    public void setNome(String nome){
            this.nome = nome;
    }

    public String getNome(){
            return this.nome;
    }

    public void setCelular(String celular){
            this.celular = celular;
    }

    public String getCelular(){
            return this.celular;
    }
}
