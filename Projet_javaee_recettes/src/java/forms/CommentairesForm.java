package forms;

import DAO.DAOCommentaire;
import beans.Commentaire;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 * @author Marine V
 */
public class CommentairesForm {

    public CommentairesForm() {
    }

    public List<Commentaire> CommentaireParRecette(HttpServletRequest request) {
        Integer id_recette = Integer.parseInt(request.getParameter("id_recette")); //conversion de l'id_recette en integer
        System.out.println(id_recette);
        DAOCommentaire daocomm = new DAOCommentaire();

        List<Commentaire> listeComm = new ArrayList<>();
        listeComm = daocomm.findAllForOneRecipe(id_recette);

        return listeComm;
    }


}
