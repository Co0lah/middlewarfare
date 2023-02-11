<%-- 
    Document   : afficherEtudiant
    Created on : 8 févr. 2023, 16:11:35
    Author     : celes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css"/>

        <title>Etudiants</title>
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
                            <a class="nav-link" href="etudiant.jsp">Formulaire Etudiant</a>
                        </li>
                           <li class="nav-item">
                            <a class="nav-link" href="employe.jsp">Formulaire Employe</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="employe-servlet">Liste Employes</a>
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

            <div class="p-5 bg-light" style="width: 50%">
                <h1 class="mb-5 text-center">Liste des Etudiants</h1>

                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Prenom</th>
                            <th>Matricule</th>
                            <th>Poids</th>
                            <th>Moyenne</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="e">
                        <tr>
                            <td>${e.nom}</td>
                            <td>${e.prenom}</td>
                            <td>${e.matricule}</td>
                            <td>${e.poids}</td>
                            <td>${moyenne}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>

</html>
