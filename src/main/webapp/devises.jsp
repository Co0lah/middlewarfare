<%-- 
    Document   : devises
    Created on : 8 févr. 2023, 18:02:54
    Author     : celes
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>

        <title>Devises Converter</title>
    </head>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <div class="container-fluid">
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarExample01"
                    aria-controls="navbarExample01"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarExample01">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" aria-current="page" href="index.html">Accueil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="etudiant.jsp">Formulaire</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="etudiant-servlet">Liste Etudiants</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="devises.html">Devises Converter</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <body>
        <div class="d-flex justify-content-center">
            <div class="p-5 text-center bg-light" style="width:20%">

                <h1 class="mb-3">Converter</h1>

                <form method="post" action="devise-servlet">                       

                    <select  name="choix">
                        <!--CHECK:  Pourquoi pas besoin des DOUBLE QUOTES pour les values !!!!! -->
                        <option value=devise>Choisir devise</option>
                        <option value=euros>Euros</option>
                        <option value=dollars>Dollars</option>
                    </select>

                    <div class="form-outline mt-4 mb-4">                 
                        <input type="number" class="form-control" placeholder="Montant à Convertir ..." name="montant1" />                   
                    </div>

                    <button type="submit" class="btn btn-primary btn-block mt-3">Convertir</button>

                </form>
            </div>
        </div>

    </body>
</html>
