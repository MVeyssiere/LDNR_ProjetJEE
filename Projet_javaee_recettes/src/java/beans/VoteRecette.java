/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Marine V
 */
public class VoteRecette {

    private Integer FK_id_recette;
    private Integer FK_id_user;

    public Integer getFK_id_recette() {
        return FK_id_recette;
    }

    public void setFK_id_recette(Integer FK_id_recette) {
        this.FK_id_recette = FK_id_recette;
    }

    public Integer getFK_id_user() {
        return FK_id_user;
    }

    public void setFK_id_user(Integer FK_id_user) {
        this.FK_id_user = FK_id_user;
    }

    public VoteRecette(Integer FK_id_recette, Integer FK_id_user) {
        this.FK_id_recette = FK_id_recette;
        this.FK_id_user = FK_id_user;
    }

    public VoteRecette() {
    }

}
