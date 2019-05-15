/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Recette;
import forms.RechercheRecette;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stagldnr
 */

public class RecetteAccueil extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String VUE = "/WEB-INF/accueil.jsp";

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String titreRecette = req.getParameter("titre");
        RechercheRecette rechercheRecette = new RechercheRecette();
       
         ArrayList<Recette> recetteAll = new ArrayList<>();
        
        
        recetteAll = (ArrayList<Recette>) rechercheRecette.ToutesRecette();
//        req.setAttribute("titre", rechercheRecette.RecetteParTitre(req));

//        req.setAttribute("titre", recette.getTitre());
        
        req.setAttribute("recetteAll", recetteAll);
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }
}
