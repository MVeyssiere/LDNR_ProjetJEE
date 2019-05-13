package beans;

/**
 * @author Marine V
 */
public class Recette {

    private Integer id_recette;
    private String titre;
    private Integer votes_positifs;
    private Integer votes_negatifs;
    private String ingredients;
    private String description;
    private String date;

    public Integer getId_recette() {
        return id_recette;
    }

    public void setId_recette(Integer id_recette) {
        this.id_recette = id_recette;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Integer getVotes_positifs() {
        return votes_positifs;
    }

    public void setVotes_positifs(Integer votes_positifs) {
        this.votes_positifs = votes_positifs;
    }

    public Integer getVotes_negatifs() {
        return votes_negatifs;
    }

    public void setVotes_negatifs(Integer votes_negatifs) {
        this.votes_negatifs = votes_negatifs;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Recette() {
    }

    public Recette(Integer id_recette, String titre, Integer votes_positifs, Integer votes_negatifs, String ingredients, String description, String date) {
        this.id_recette = id_recette;
        this.titre = titre;
        this.votes_positifs = votes_positifs;
        this.votes_negatifs = votes_negatifs;
        this.ingredients = ingredients;
        this.description = description;
        this.date = date;
    }

}