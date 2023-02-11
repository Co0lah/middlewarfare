<%-- 
    Document   : afficherDevise
    Created on : 8 févr. 2023, 18:24:29
    Author     : celes
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <title>Devises</title>
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
                            <a class="nav-link" href="afficherEtudiant.jsp">Liste Etudiants</a>
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

        <div class="p-5 text-center bg-light">
            <h1>Devise Convertie</h1>
            <p>
                Vous avez choisi la conversion en <b><%= request.getParameter("choix")%> </b> 
            </p>
            <p>
                <!-- To FIX : Comment obtenir la devise du montant 2 dynamiquement ??!!-->
                Pour <b>${dvse.montant1} <%= request.getParameter("choix")%></b>  vous obtenez <b>${montant2}
                    <c:set var="d" scope="page" value="<%= request.getParameter("choix")%>"></c:set>
                    <c:choose>
                        <c:when test="${d == 'euros'}">
                            dollars
                        </c:when>
                        <c:when test="${d == 'dollars'}">
                            euros
                        </c:when>
                        <c:otherwise>
                            
                        </c:otherwise>
                    </c:choose>
                </b>
            </p>
        </div>

    </body>
</html>
