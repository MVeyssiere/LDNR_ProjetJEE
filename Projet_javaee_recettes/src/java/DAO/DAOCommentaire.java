package DAO;

import beans.Commentaire;
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
public class DAOCommentaire extends DAO<Commentaire> {

    private final String table = "commentaire";

    @Override
    public Commentaire find(Integer id) {
        Commentaire retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table + " WHERE id_commentaire=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setInt(1, id);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new Commentaire(id,
                        rs.getString("titre"),
                        rs.getString("corps"),
                        rs.getString("signalement"),
                        rs.getString("date"),
                        rs.getInt("FK_id_user"),
                        rs.getInt("FK_id_recette")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCommentaire.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    @Override
    public Commentaire create(Commentaire obj) {

        Commentaire rtObj = null;
        String sql = "INSERT INTO " + table + " (titre, corps, signalement, date, FK_id_user, FK_id_recette)" + " VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, obj.getTitre());
            pstmt.setString(2, obj.getCorps());
            pstmt.setString(3, obj.getSignalement());
            pstmt.setString(4, obj.getDate());
            pstmt.setInt(5, obj.getFK_id_user());
            pstmt.setInt(6, obj.getFK_id_recette());
            pstmt.executeUpdate();
            ResultSet generatedKeys = pstmt.getGeneratedKeys();
            if (generatedKeys.first()) {
                rtObj = this.find(generatedKeys.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCommentaire.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
    }

    @Override
    public void delete(Commentaire obj) {
        String sql = "DELETE FROM " + table + " WHERE id_commentaire=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_commentaire());
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCommentaire.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Commentaire update(Commentaire obj) {
        Commentaire rtObj = null;
        String sql = "UPDATE " + table + " SET "
                + "titre = ?,"
                + "corps = ?"
                + "signalement = ?"
                + "date = ?"
                + "FK_id_user = ?"
                + "FK_id_recette = ?"
                + " WHERE id_commentaire = ?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_commentaire());
            pstmt.setString(2, obj.getTitre());
            pstmt.setString(3, obj.getCorps());
            pstmt.setString(3, obj.getSignalement());
            pstmt.setString(4, obj.getDate());
            pstmt.setInt(5, obj.getFK_id_user());
            pstmt.setInt(6, obj.getFK_id_recette());
            pstmt.executeUpdate();
            //réhydrate l'objet a partir de ces nouvelles données
            rtObj = find(obj.getId_commentaire());

        } catch (SQLException ex) {
            Logger.getLogger(DAOCommentaire.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
    }

    @Override
    public List<Commentaire> findAll() {
        ArrayList<Commentaire> retObj = new ArrayList<>();
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table;
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                retObj.add(new Commentaire(rs.getInt("id_recette"),
                        rs.getString("titre"),
                        rs.getString("corps"),
                        rs.getString("signalement"),
                        rs.getString("date"),
                        rs.getInt("FK_id_user"),
                        rs.getInt("FK_id_recette")
                ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCommentaire.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

}
