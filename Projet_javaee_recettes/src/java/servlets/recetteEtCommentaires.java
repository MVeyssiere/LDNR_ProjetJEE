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
public class recetteEtCommentaires extends HttpServlet {

    public static final String VIEW = "/WEB-INF/uneRecette.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RechercheRecette recette = new RechercheRecette();
        Recette uneRecette = recette.RecetteParId(req);
        CommentairesForm commentaire = new CommentairesForm();
        List<Commentaire> commentaires = commentaire.CommentaireParRecette(req);

        /* stockage formulaire et bean dans l'objet request*/
        req.setAttribute("recette", uneRecette);
        req.setAttribute("commentaire", commentaires);

        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }


}
