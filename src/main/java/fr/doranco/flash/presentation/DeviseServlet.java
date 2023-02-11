/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fr.doranco.flash.presentation;

import fr.doranco.flash.metier.model.Devise;
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
@WebServlet(name = "DeviseServlet", urlPatterns = {"/devise-servlet"})
public class DeviseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        double montant1 = Integer.parseInt(req.getParameter("montant1"));

        Devise d = new Devise(montant1);

//        String euro = "euros";
//        String dollar = "dollars";
        
        double montant2 = (req.getParameter("choix").matches("dollars"))  ? montant1 * 0.93 : montant1 * 1.07;
       
         resp.getWriter().write(req.getParameter("choix"));  
       
        req.setAttribute("dvse", d);
        req.setAttribute("montant2", montant2);
        
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("afficherDevise.jsp");

        requestDispatcher.forward(req, resp);
    }
}
