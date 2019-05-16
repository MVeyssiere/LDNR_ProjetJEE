package servlets;

import beans.Commentaire;
import beans.Recette;
import forms.CommentairesForm;
import forms.RechercheRecette;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Marine V
 */
public class RecetteCtrl extends HttpServlet {

    private static final String VUE = "/WEB-INF/recettes.jsp";

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RechercheRecette rechercheRecette = new RechercheRecette();
        Recette recette = rechercheRecette.RecetteParTitre(req);

        // commentaires
        CommentairesForm commForm = new CommentairesForm();
        List<Commentaire> comm = commForm.CommentaireParRecette(req);

        req.setAttribute("recette", recette);
        req.setAttribute("commentaire", comm);
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

}
