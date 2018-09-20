<%-- 
    Document   : listaAlunos
    Created on : 24/08/2018, 22:29:10
    Author     : geicyane.ruppel
--%>

<%@page import="Model.Aluno"%>
<%@page import="dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Ae inseriu
        eu acho
        <%
            AlunoDAO alunoDao = new AlunoDAO();
            for (Aluno aluno : alunoDao.listaAluno()) {
                out.print("<p>" + aluno.getMatricula() + "</p><br/>");
                out.print("<p>" + aluno.getNome() + "</p><br/>");
                out.print("<p>" + aluno.getCelular() + "</p><br/>");
            }
        %>
    </body>
</html>
