package DAO;

import beans.Recette;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Marine V
 */
public class DAORecette extends DAO<Recette> {

    private final String table = "recette";

    @Override
    public Recette find(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Recette create(Recette obj) {

        Recette rtObj = null;
        String sql = "INSERT INTO " + table + " (titre, votes_positifs, votes_negatifs, ingredients, description, date)" + " VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, obj.getTitre());
            pstmt.setInt(2, obj.getVotes_positifs());
            pstmt.setInt(3, obj.getVotes_negatifs());
            pstmt.setString(4, obj.getIngredients());
            pstmt.setString(5, obj.getDescription());
            pstmt.setString(6, obj.getDate());
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
    public void delete(Recette obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Recette update(Recette obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Recette> findAll() {
        ArrayList<Recette> retObj = new ArrayList<>();
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table;
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                retObj.add(new Recette(rs.getInt("id_recette"),
                        rs.getString("titre"),
                        rs.getInt("votes_positifs"),
                        rs.getInt("votes_negatifs"),
                        rs.getString("ingredients"),
                        rs.getString("description"),
                        rs.getString("date")
                ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }


}
