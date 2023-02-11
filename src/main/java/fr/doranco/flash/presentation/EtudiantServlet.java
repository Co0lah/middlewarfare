/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.presentation;

import fr.doranco.flash.metier.model.Etudiant;
import fr.doranco.flash.metier.EtudiantJavaBean;
import fr.doranco.flash.metier.ejb.EtudiantEjbStateful;
import fr.doranco.flash.metier.ejb.EtudiantEjbStateless;
import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author celes
 */
@WebServlet(name = "EtudiantServlet", urlPatterns = {"/etudiant-servlet"})
public class EtudiantServlet extends HttpServlet {

    @EJB
    EtudiantEjbStateless etudiantEjbStateless;

    @EJB
    EtudiantEjbStateful etudiantEjbStateful;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String matricule = req.getParameter("matricule");
        int poids = Integer.parseInt(req.getParameter("poids"));
        int moyenne = Integer.parseInt(req.getParameter("moyenne"));

        Etudiant e = new Etudiant(nom, prenom, matricule, poids, moyenne);
        //mode instance
        //EtudiantJavaBean em = new EtudiantJavaBean();
        etudiantEjbStateful.addEtudiant(e);

        //Ajouter objet dans la requête avant redirection
        //req.setAttribute("moyenne", etudiantEjbStateless.getMoyenne(moyenne));
        req.setAttribute("moyenne", etudiantEjbStateful.getMoyenne(moyenne));
        //req.setAttribute("moyenne", EtudiantJavaBean.getMention(moyenne)); //mode static
 
        req.setAttribute("list", etudiantEjbStateful.getListEtudiants());
        
        // Redirection de la requête vers la Liste
        req.getRequestDispatcher("afficherEtudiant.jsp").forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Ajouter la liste dans la requête
        req.setAttribute("list", etudiantEjbStateful.getListEtudiants());
        // Redirection de la requête vers la jsp pour afficher la liste
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("afficherEtudiant.jsp");

        requestDispatcher.forward(req, resp);
    }

}
