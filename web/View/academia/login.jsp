<%-- 
    Document   : login
    Created on : 10/09/2018, 01:30:49
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/flaticon.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <!-- Animate -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Bootsnav -->
        <link rel="stylesheet" href="css/bootsnav.css">
        <!-- Color style -->
        <link rel="stylesheet" href="css/color.css">

        <!-- Custom stylesheet -->
        <link rel="stylesheet" href="css/custom.css" />
    </head>
    <body>
        <!-- Header -->
        <header id="hello">
            <!-- Container -->
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="banner">
                            <h1>GymPasse</h1>

                            <div class="inner_banner">
                                <div class="banner_content">
                                    <h3>Uma única mensalidade, acesso ilimitado a</h3>
                                    <h4>18.500 academias</h4>	
                                    <h4>710 modalidades esportivas</h4>
                                    <h4>1.296 cidades com Gympass</h4>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- Container end -->
        </header><!-- Header end -->
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/ProjetoBruno/index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="listaAcademia.jsp">Academias</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="sobre.jsp">Sobre</a>
                    </li>
                     <li class="nav-item active">
                        <a class="nav-link" href="contato.jsp">Contato<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Entrar</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <div style="display: flex;
             justify-content: center;">
            <form method="POST" action="/ProjetoBruno/AlunoServlet">
                <input type="text" name="matricula" placeholder="matricula">
                <br>
                <input type="text" name="nome" placeholder="nome">
                <br>
                <input type="text" name="celular" placeholder="celular">
                <br>
                <input type="submit" value="Cadastrar">
            </form>
        </div>
    </body>
</html>
