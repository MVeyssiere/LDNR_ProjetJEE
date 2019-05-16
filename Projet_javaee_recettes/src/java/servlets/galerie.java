/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Recette;
import forms.RechercheRecette;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stagldnr
 */
public class galerie  extends HttpServlet {
    
    private static final String VUE = "/WEB-INF/galerie.jsp";

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

        req.setAttribute("recetteAll", recetteAll);
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

}
    

