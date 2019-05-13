package beans;

/**
 * @author Marine V
 */
public class Commentaire {

    private Integer id_commentaire;
    private String titre;
    private String corps;
    private String signalement;
    private String date;
    private Integer FK_id_user;
    private Integer FK_id_recette;

    public Integer getId_commentaire() {
        return id_commentaire;
    }

    public void setId_commentaire(Integer id_commentaire) {
        this.id_commentaire = id_commentaire;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getCorps() {
        return corps;
    }

    public void setCorps(String corps) {
        this.corps = corps;
    }

    public String getSignalement() {
        return signalement;
    }

    public void setSignalement(String signalement) {
        this.signalement = signalement;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getFK_id_user() {
        return FK_id_user;
    }

    public void setFK_id_user(Integer FK_id_user) {
        this.FK_id_user = FK_id_user;
    }

    public Integer getFK_id_recette() {
        return FK_id_recette;
    }

    public void setFK_id_recette(Integer FK_id_recette) {
        this.FK_id_recette = FK_id_recette;
    }

    public Commentaire() {
    }

    public Commentaire(Integer id_commentaire, String titre, String corps, String signalement, String date, Integer FK_id_user, Integer FK_id_recette) {
        this.id_commentaire = id_commentaire;
        this.titre = titre;
        this.corps = corps;
        this.signalement = signalement;
        this.date = date;
        this.FK_id_user = FK_id_user;
        this.FK_id_recette = FK_id_recette;
    }

}
