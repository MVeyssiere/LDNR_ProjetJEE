package servlets;

import beans.Recette;
import beans.User;
import forms.ConnectionForm;
import forms.RechercheRecette;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Marine V
 */
public class Connection extends HttpServlet {

    private static final String ATT_BUTTON = "désinscription";
    private static final String ATT_USER = "utilisateur";
    private static final String ATT_FORM = "form";
    private static final String ATT_SESSION_USER = "sessionUtilisateur";
    private String VUE = "/WEB-INF/accueil.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        ConnectionForm form = new ConnectionForm();
        /* Traitement de la requête et récupération du bean en résultant */
        User user = form.connectUser(req);
//        User user2 = form.connectUser(req);
//        user2.setDroits("visiteur");
        /* Récupération de la session depuis la requête */
        HttpSession session = req.getSession();
        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean user
         * à la session, sinon suppression du bean de la session.
         */
        boolean test = false;
        
        test = form.DeleteOr(req, ATT_BUTTON);
        
        
        if(test != true)
        {
            VUE = "/WEB-INF/accueil.jsp";
            
        }else{
            VUE = "/formulaire.jsp";
            form.UpdateDroit(user.getEmail());
        }
               
                
        if (form.getErrors().isEmpty()) {
            session.setAttribute(ATT_SESSION_USER, user);
        } else {
            session.setAttribute(ATT_SESSION_USER, null);
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        req.setAttribute(ATT_FORM, form);
        req.setAttribute(ATT_USER, user);

        RechercheRecette rechercheRecette = new RechercheRecette();

        ArrayList<Recette> recetteLast = new ArrayList<>();
        ArrayList<Recette> recetteTop = new ArrayList<>();

        recetteLast = (ArrayList<Recette>) rechercheRecette.DerniereRecette();
        recetteTop = (ArrayList<Recette>) rechercheRecette.TopRecette();

        req.setAttribute("recetteLast", recetteLast);
        req.setAttribute("recetteTop", recetteTop);

        this.getServletContext().getRequestDispatcher(VUE).forward(req, resp);
    }

}
