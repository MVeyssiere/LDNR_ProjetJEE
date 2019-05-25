package forms;

import DAO.DAORecette;
import DAO.DAOUser;
import beans.Recette;
import beans.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import sun.security.pkcs11.wrapper.Functions;

/**
 * @author Marine V
 */
public class creationRecetteForm {

    public creationRecetteForm() {
    }

    private static final String TITRE = "titre";
    private static final String INGREDIENTS = "ingredients";
    private static final String RECETTE = "recette";
    private static final String IMAGE = "image";
//    private static final String FK_USER = "id_user";

    DAORecette daorecette = new DAORecette();

    private String result;
    private final Map<String, String> errors = new HashMap<>();

    public String getResult() {
        return result;
    }

    public Map<String, String> getErrors() {
        return errors;
    }

    private void setErrors(String field, String message) {
        errors.put(field, message);
    }

    public Recette createRecette(HttpServletRequest request) {

        String titre = getParamValue(request, TITRE);
        String ingred = getParamValue(request, INGREDIENTS);
        String recette = getParamValue(request, RECETTE);
        String image = getParamValue(request, IMAGE);

        Recette newRecette = new Recette();

        try {
            validateTitle(titre);
        } catch (Exception e) {
            setErrors(TITRE, e.getMessage());
        }

        try {
            validateIngredients(INGREDIENTS);
        } catch (Exception e) {
            setErrors(INGREDIENTS, e.getMessage());
        }

        try {
            validateRecette(recette);
        } catch (Exception e) {
            setErrors(RECETTE, e.getMessage());
        }

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date dateDuJour = new java.sql.Date(utilDate.getTime());
        System.out.println("date du jour: " + dateDuJour);

        // récupérer l'id_user dans la session en cours
        HttpSession session = request.getSession(false);

        User currentUser = (User) session.getAttribute("sessionUtilisateur");
        System.out.println("session : " + session.getAttribute("sessionUtilisateur"));

        // la sessionUtilisateur n'a pas l'id du user mais a l'email
        // donc il faut retrouver l'id créé dans la bdd via l'email du user connecté
        DAOUser daouser = new DAOUser();
        User myUser = daouser.findFromEmail(currentUser.getEmail());

        //System.out.println("user id: " + myUser.getId_user());
        //id_user retrouvé utilisé pour renseigner le user qui créé une recette
        Integer fk_id_user = myUser.getId_user();

        /* Initialisation du résultat global de la validation. */
        if (errors.isEmpty() && !daorecette.verifyTitle(titre)) {
            newRecette.setTitre(titre);
            newRecette.setIngredients(ingred);
            newRecette.setDescription(recette);
            newRecette.setDate(dateDuJour);
            newRecette.setFK_id_user(fk_id_user);
            newRecette.setImage(image);
            daorecette.create(newRecette);
            result = "Votre recette est enregistrée!";
        } else if (daorecette.verifyTitle(titre)) {
            setErrors(TITRE, "");
            result = "Cette recette existe déjà.";
        } else {
            System.out.println("errors: " + errors);
            setErrors(TITRE, "");
            result = "Une erreur est survenue à l'enregistrement.";
        }
        return newRecette;
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

    private void validateRecette(String recette) throws Exception {
        if (recette.isEmpty()) {
            throw new Exception("Renseignez la recette");
        }
    }

    private void validateIngredients(String ingredients) throws Exception {
        if (ingredients.isEmpty()) {
            throw new Exception("Renseignez les ingrédients de votre recette");
        }
    }

    private void validateTitle(String title) throws Exception {
        if (title.isEmpty()) {
            throw new Exception("Quel nom donnez-vous à votre plat?");
        }
    }
}
