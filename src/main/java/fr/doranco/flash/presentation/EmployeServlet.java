/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fr.doranco.flash.presentation;

import fr.doranco.flash.metier.ejb.EmployeEjbStateful;
import fr.doranco.flash.metier.ejb.EmployeEjbStateless;
import fr.doranco.flash.metier.model.Employe;
import jakarta.ejb.EJB;
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
@WebServlet(name = "EmployeServlet", urlPatterns = {"/employe-servlet"})
public class EmployeServlet extends HttpServlet {

    @EJB
    EmployeEjbStateful employeEjbStateful;
    
    @EJB
    EmployeEjbStateless employeEjbStateless;
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String sexe = request.getParameter("sexe");
        int salaire = Integer.parseInt(request.getParameter("salaire"));
        
        Employe e = new Employe(nom, prenom, sexe, salaire);
        employeEjbStateful.addEmploye(e);
        
        //Mettre en mode bool
        //employeEjbStateful.getListEmployes().stream().filter(salaire + salaire);
        //test avec attr en int
        
        double moyenne = employeEjbStateful.getListEmployes().stream()
                .mapToDouble(Employe::getSalaire).average().getAsDouble();
        
        //test plus haut salaire avec max()
        double slrMax = employeEjbStateful.getListEmployes().stream()
                .mapToDouble(Employe::getSalaire).max().getAsDouble();
        
        double slrMin = employeEjbStateful.getListEmployes().stream()
                .mapToDouble(Employe::getSalaire).max().getAsDouble();
        
        
       
        
        request.setAttribute("list", employeEjbStateful.getListEmployes());    
        request.setAttribute("moyenne", moyenne);    
        request.setAttribute("slrMax", slrMax);    
        request.setAttribute("slrMin", slrMin);    
        request.getRequestDispatcher("afficherEmploye.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("list",  employeEjbStateful.getListEmployes());

        request.getRequestDispatcher("afficherEmploye.jsp").forward(request, response);
    }

}
