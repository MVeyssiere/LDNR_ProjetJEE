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


    //utilisé avec les commentaires
    public Recette RecetteParId(HttpServletRequest request) {

        Integer id_recette = Integer.parseInt(getParamValue(request, "id_recette"));

        DAORecette daorecette = new DAORecette();
        System.out.println(id_recette);
        Recette recette = daorecette.find(id_recette);

        return recette;
    }
    
    public List<Recette> ToutesRecette() {
//        String titre = request.getParameter("titre");
       

        DAORecette daorecette = new DAORecette();
        
        
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findAll();

        return recette;
//        return titre;
    }
    
    public DAORecette UpdatePositif(String titre,HttpServletRequest request){    
        System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        
        DAORecette daorecette = new DAORecette();
        Recette recette = daorecette.findByTitle(titre);
//        Integer vote = Integer.parseInt(getParamValue(request, "uneRecette"));
        if(getParamValue(request, "uneRecette").matches("BON"))
        {
            System.out.println("votes positifs: " + recette.getVotes_positifs());
//            
//            recette.setVotes_positifs((Integer)recette.getVotes_positifs() + 1);
//            
             System.out.println("votes positifs NOW: " + recette.getVotes_positifs());
                     daorecette.updateVotePlus(recette);

            
        }else if(getParamValue(request, "uneRecette").matches("PASBON")){
                daorecette.updateVoteMoins(recette);

        }
//        daorecette.update(recette);
        
        return daorecette;
    }
    
    public List<Recette> TopRecette() {
//        String titre = request.getParameter("titre");

        DAORecette daorecette = new DAORecette();
        
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findTop();

        return recette;
//        return titre;
    }
    
    public List<Recette> DerniereRecette() {
//        String titre = request.getParameter("titre");
       

        DAORecette daorecette = new DAORecette();
        
        
        ArrayList<Recette> recette = new ArrayList<>();
        recette = (ArrayList<Recette>) daorecette.findLast();

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
    
    public boolean AjoutOr(HttpServletRequest request, String paramKey) {
        
        if(request.getParameter("Positif") != null)
        { 
            return true;
            
        } else {
            return false;
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
