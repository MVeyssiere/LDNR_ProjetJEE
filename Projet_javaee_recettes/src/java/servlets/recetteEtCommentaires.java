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

    public String VIEW = "/WEB-INF/uneRecette.jsp";
    private static final String ATT_POSITIF = "Positif";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RechercheRecette recette = new RechercheRecette();
        Recette uneRecette = recette.RecetteParId(req);
        CommentairesForm commentaire = new CommentairesForm();
        List<Commentaire> commentaires = commentaire.CommentaireParRecette(req);

        req.setAttribute("recette", uneRecette);
        req.setAttribute("commentaire", commentaires);

        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RechercheRecette recette = new RechercheRecette();

        Recette uneRecette = recette.RecetteParId(req);
        CommentairesForm commentaire = new CommentairesForm();
        List<Commentaire> commentaires = commentaire.CommentaireParRecette(req);

        req.setAttribute("recette", uneRecette);
        req.setAttribute("commentaire", commentaires);
        req.setAttribute("form", recette);
        
        recette.UpdatePositif(uneRecette.getTitre(), req);

        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }

}
