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
        Recette retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table + " WHERE id_recette=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setInt(1, id);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new Recette(id,
                        rs.getString("titre"),
                        rs.getInt("votes_positifs"),
                        rs.getInt("votes_negatifs"),
                        rs.getString("ingredients"),
                        rs.getString("description"),
                        rs.getString("date")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    @Override
    public Recette create(Recette obj) {

        Recette rtObj = null;
        String sql = "INSERT INTO " + table + " (titre, votes_positifs, votes_negatifs, ingredients, description, date)" + " VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, obj.getTitre());
            pstmt.setInt(2, 0);
            pstmt.setInt(3, 0);
            pstmt.setString(4, obj.getIngredients());
            pstmt.setString(5, obj.getDescription());
            pstmt.setString(6, obj.getDate());
            pstmt.executeUpdate();
            ResultSet generatedKeys = pstmt.getGeneratedKeys();
            if (generatedKeys.first()) {
                rtObj = this.find(generatedKeys.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
    }

    @Override
    public void delete(Recette obj) {
        String sql = "DELETE FROM " + table + " WHERE id_recette=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_recette());
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Recette update(Recette obj) {
        Recette rtObj = null;
        String sql = "UPDATE " + table + " SET "
                + "titre = ?,"
                + "votes_positifs = ?"
                + "votes_negatifs = ?"
                + "ingredients = ?"
                + "description = ?"
                + "date = ?"
                + " WHERE id_recette = ?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_recette());
            pstmt.setString(2, obj.getTitre());
            pstmt.setInt(3, obj.getVotes_positifs());
            pstmt.setInt(3, obj.getVotes_negatifs());
            pstmt.setString(4, obj.getIngredients());
            pstmt.setString(5, obj.getDescription());
            pstmt.setString(6, obj.getDate());
            pstmt.executeUpdate();
            //réhydrate l'objet a partir de ces nouvelles données
            rtObj = find(obj.getId_recette());

        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
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
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }
    
   
    public List<Recette> findTop() {
        ArrayList<Recette> retObj = new ArrayList<>();
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        
        String sql = "SELECT * FROM " + table + " ORDER BY 'votes_positifs' DESC LIMIT 3";
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
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    public Recette findByTitle(String titre) {
        Recette retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM recette WHERE titre = ?";
        System.out.println(sql);
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setString(1, titre);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();
            if (rs.first()) {
                retObj = new Recette(rs.getInt("id_recette"),
                        titre,
                        rs.getInt("votes_positifs"),
                        rs.getInt("votes_negatifs"),
                        rs.getString("ingredients"),
                        rs.getString("description"),
                        rs.getString("date")
                );
                System.out.println(retObj.getTitre());
//                retObj = new Recette(titre,
//                        rs.getString("description")
//                );
//                retObj = new Recette("SauceTomate");

            }
        } catch (SQLException ex) {
            Logger.getLogger(DAORecette.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    //verify if email already exist in database. For the user connection.
    public boolean verifyTitle(String email) {

        boolean result = false;
        String sql = "SELECT * FROM " + table + " WHERE titre=?";
        System.out.println(sql);
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setString(1, email);
            // cet ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            result = rs.first(); // return true if a row exist because an email already exist in . return false if not.

        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

}
