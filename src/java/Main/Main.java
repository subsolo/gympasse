/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import Model.Aluno;
import Model.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author bruno.rosario
 */
public class Main {

    public static void main(String[] args) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();

        Aluno aluno = new Aluno(123456, "Bruno", "999887745");
        session.saveOrUpdate(aluno);
        
        Transaction tx = session.beginTransaction();
        
        tx.commit();

        session.flush();
        session.close();
    }
}
