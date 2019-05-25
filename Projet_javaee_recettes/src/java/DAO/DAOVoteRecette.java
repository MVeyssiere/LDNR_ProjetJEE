/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Recette;
import beans.VoteRecette;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marine V
 */
public class DAOVoteRecette extends DAO<VoteRecette> {

    private final String table = "vote_recette";

    public VoteRecette findByRecette(Integer id) {

        VoteRecette retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table + " WHERE FK_id_recette=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setInt(1, id);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new VoteRecette(id,
                        rs.getInt("FK_id_user")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    public VoteRecette findByUser(Integer id) {

        VoteRecette retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table + " WHERE FK_id_user=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setInt(1, id);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new VoteRecette(id,
                        rs.getInt("FK_id_recette")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    @Override
    public VoteRecette find(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public VoteRecette create(VoteRecette obj) {
        VoteRecette rtObj = null;
        String sql = "INSERT INTO " + table + " (FK_id_recette, FK_id_user)" + " VALUES (?, ?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, obj.getFK_id_recette());
            pstmt.setInt(2, obj.getFK_id_user());
            pstmt.executeUpdate();
            ResultSet generatedKeys = pstmt.getGeneratedKeys();
            if (generatedKeys.first()) {
                rtObj = this.find(generatedKeys.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
    }

    @Override
    public void delete(VoteRecette obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public VoteRecette update(VoteRecette obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<VoteRecette> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
