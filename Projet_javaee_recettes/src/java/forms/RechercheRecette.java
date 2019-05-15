package forms;

import DAO.DAORecette;
import beans.Recette;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 * @author Marine V
 */
public class RechercheRecette {

    public RechercheRecette() {
    }


    private static final String TITRE = "titre";

    public Recette RecetteParTitre(HttpServletRequest request) {
//        String titre = request.getParameter("titre");
        String titre = getParamValue(request, TITRE);

        DAORecette daorecette = new DAORecette();
        System.out.println(titre);
        Recette recette = daorecette.findByTitle(titre);

        return recette;
//        return titre;
    }
    
    public List<Recette> ToutesRecette() {
//        String titre = request.getParameter("titre");
       

        DAORecette daorecette = new DAORecette();
        
        
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findAll();

        return recette;
//        return titre;
    }
    
    public List<Recette> TopRecette() {
//        String titre = request.getParameter("titre");
       

        DAORecette daorecette = new DAORecette();
        
        
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findTop();

        return recette;
//        return titre;
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
//
//    private void setErrors(String field, String message) {
//        errors.put(field, message);
//    }
//
//    public Map<String, String> getErrors() {
//        return errors;
//    }
//

}
