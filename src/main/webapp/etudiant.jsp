<%-- 
    Document   : etudiant
    Created on : 8 févr. 2023, 14:50:39
    Author     : celes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <title>Formulaire Enregistrement</title>
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

            <div class="p-5  bg-light" style="width: 50%">

                <h1 class="mb-3 text-center">Formulaire Enregistrement Etudiants</h1>

                <form method="post" action="etudiant-servlet">
                    <div class="form-outline mb-4">
                        <label class="form-label">Nom</label>
                        <input type="text" class="form-control" placeholder="Nom" name="nom"/>
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label">Prenom</label>
                        <input type="text" class="form-control" placeholder="Prenom" name="prenom"/>
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label">Matricule</label>
                        <input type="text" class="form-control" placeholder="Matricule" name="matricule"/>
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label">Poids</label>
                        <input type="number" class="form-control" placeholder="Poids" name="poids"/>
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label">Moyenne</label>
                        <input type="number" class="form-control" placeholder="Moyenne" name="moyenne"/>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Je m'inscris</button>
                </form>
            </div>
        </div>

    </body>

</html>
