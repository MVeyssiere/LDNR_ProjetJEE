package servlets;

import beans.Recette;
import forms.RechercheRecette;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Marine V
 */
public class RecetteCtrl extends HttpServlet {

    private static final String VUE = "/WEB-INF/page_recette.jsp";

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String titreRecette = req.getParameter("titre");
        RechercheRecette rechercheRecette = new RechercheRecette();
        Recette recette = new Recette();
        recette = rechercheRecette.RecetteParTitre(req);
//        req.setAttribute("titre", rechercheRecette.RecetteParTitre(req));

//        req.setAttribute("titre", recette.getTitre());
        req.setAttribute("recette", recette);
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

}
