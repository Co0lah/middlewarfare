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

        <title>Employés</title>
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

            <div class="p-5 bg-light" style="width: 50%">
                <h1 class="mb-5 text-center">Liste des Employés</h1>

                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Prenom</th>
                            <th>Sexe</th>
                            <th>Salaire</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="e">
                        <tr>
                            <td>${e.nom}</td>
                            <td>${e.prenom}</td>
                            <td>${e.sexe}</td>
                            <td>${e.salaire}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td></td>
                            <th>Salaire Moyen</th>
                            <th>${moyenne}</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <th> Salaire Maximum</th>
                            <th>${slrMax}</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <th> Salaire Minimum</th>
                            <th>${slrMin}</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>

</html>
