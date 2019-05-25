package forms;

import DAO.DAORecette;
import DAO.DAOUser;
import DAO.DAOVoteRecette;
import beans.Recette;
import beans.User;
import beans.VoteRecette;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author Marine V
 */
public class RechercheRecette {

    public RechercheRecette() {
    }

    private static final String TITRE = "titre";
    private String result;
    private String avote;
    private final Map<String, String> errors = new HashMap<>();

    public Map<String, String> getErrors() {
        return errors;
    }

    public Recette RecetteParTitre(HttpServletRequest request) {
        String titre = getParamValue(request, TITRE);

        DAORecette daorecette = new DAORecette();
        System.out.println(titre);
        Recette recette = daorecette.findByTitle(titre);

        return recette;
    }

    //utilisé avec les commentaires
    public Recette RecetteParId(HttpServletRequest request) {
        Integer id_recette = Integer.parseInt(getParamValue(request, "id_recette"));

        DAORecette daorecette = new DAORecette();
        System.out.println(id_recette);
        Recette recette = daorecette.find(id_recette);

        return recette;
    }

    public List<Recette> ToutesRecette() {
        DAORecette daorecette = new DAORecette();
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findAll();

        return recette;
    }

    public DAORecette UpdatePositif(String titre, HttpServletRequest request) {

        DAORecette daorecette = new DAORecette();
        Recette recette = daorecette.findByTitle(titre);
        /*
        //pour remplir la table vote_recette
        VoteRecette voteRecette = new VoteRecette();
        //recuperer id_recette et id_user
        Integer id_re = Integer.parseInt(getParamValue(request, "id_recette"));
        HttpSession session = request.getSession(false);
        User currentUser = (User) session.getAttribute("sessionUtilisateur");
        // la sessionUtilisateur n'a pas l'id du user mais a l'email
        // donc il faut retrouver l'id créé dans la bdd via l'email du user connecté
        DAOUser daouser = new DAOUser();
        System.out.println(currentUser.getEmail());
        User myUser = daouser.findFromEmail(currentUser.getEmail());
        //id_user retrouvé utilisé pour renseigner le user qui créé une recette
        Integer id_user = myUser.getId_user();

        //remplissage du bean voteRecette
        voteRecette.setFK_id_recette(id_re);
        voteRecette.setFK_id_user(id_user);

        DAOVoteRecette daovote = new DAOVoteRecette();

        //si findByUser is null -> create vote
        if ((daovote.findByUser(id_user) && daovote.findByRecette(id_re)) == null) {
            daovote.create(voteRecette); //remplissage table vote_recette
         */
        if (getParamValue(request, "uneRecette").matches("BON")) {
            daorecette.updateVotePlus(recette); //vote incrémenté de 1
            //result = "+ 1 point";
        } else if (getParamValue(request, "uneRecette").matches("PASBON")) {
            daorecette.updateVoteMoins(recette); // vote décrémenté de 1
            //result = "- 1 point";
        }
        /*
        } else {
            // else -> error already voted
            setErrors(avote, "Vous avez déjà voté pour cette recette.");
            result = "Vous avez déjà voté pour cette recette.";
        }
         */
        return daorecette;
    }

    public List<Recette> TopRecette() {
        DAORecette daorecette = new DAORecette();

        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findTop();

        return recette;
    }

    public List<Recette> DerniereRecette() {
        DAORecette daorecette = new DAORecette();
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findLast();

        return recette;
    }

    // retourne null si le champ est vide ou null, ou sa valeur « trimée » sinon, ce qui permet de simplifier les tests.
    private static String getParamValue(HttpServletRequest request, String paramKey) {
        String value = request.getParameter(paramKey);
        if (value == null || value.trim().length() == 0) {
            return null;
        } else {
            return value.trim();
        }
    }

    public boolean AjoutOr(HttpServletRequest request, String paramKey) {
        if (request.getParameter("Positif") != null) {
            return true;
        } else {
            return false;
        }
    }

    private void setErrors(String field, String message) {
        errors.put(field, message);
    }

    public String getResult() {
        return result;
    }

}
