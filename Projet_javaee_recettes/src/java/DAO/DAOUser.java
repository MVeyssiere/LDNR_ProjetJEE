package DAO;

import beans.User;
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
public class DAOUser extends DAO<User> {

    private final String table = "user";

    @Override
    public User find(Integer id) {
        User retObj = null;
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table + " WHERE id_user=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setInt(1, id);
            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new User(id,
                        rs.getString("password")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    @Override
    public User create(User obj) {

        User rtObj = null;
        String sql = "INSERT INTO " + table + " (name, email, password, droits)" + " VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, obj.getName());
            pstmt.setString(2, obj.getEmail());
            pstmt.setString(3, obj.getPassword());
            pstmt.setString(4, obj.getDroits());
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
    public void delete(User obj) {
        String sql = "DELETE FROM " + table + " WHERE id_user=?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_user());
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public User update(User obj) {
        User rtObj = null;
        String sql = "UPDATE " + table + " SET "
                + "name = ?,"
                + "email = ?"
                + "password = ?"
                + "droits = ?"
                + " WHERE id_user = ?";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, obj.getId_user());
            pstmt.setString(2, obj.getName());
            pstmt.setString(3, obj.getEmail());
            pstmt.setString(4, obj.getPassword());
            pstmt.setString(5, obj.getDroits());
            pstmt.executeUpdate();
            //réhydrate l'objet a partir de ces nouvelles données
            rtObj = find(obj.getId_user());

        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rtObj;
    }

    @Override
    public List<User> findAll() {
        ArrayList<User> retObj = new ArrayList<>();
        // faut faire attention aux espaces qui doivent entouré le nom de la table
        String sql = "SELECT * FROM " + table;
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);

            // cette ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                retObj.add(new User(rs.getInt("id_user"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("droits")
                ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

    //verify if email already exist in database. For the user connection.
    public boolean verifyEmail(String email) {

        boolean result = false;
        String sql = "SELECT * FROM " + table + " WHERE email=?";
        System.out.println(sql);
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setString(1, email);
            // cet ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            result = rs.first(); // return true if a row exist because an email already exist in . return false if not.
            System.out.println("email: " + email);

        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    //verify if email already exist in database. For the user connection.
    public User findFromEmail(String email) {

        User retObj = null;
        String sql = "SELECT * FROM " + table + " WHERE email=?";
        //System.out.println(sql);
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            // permet de trouver dans la base de données tous les lignes ayant l'id
            pstmt.setString(1, email);
            // cet ensemble permet de récuperer tous les objets ayant le bon pstmt
            ResultSet rs = pstmt.executeQuery();

            if (rs.first()) {
                retObj = new User(email,
                        rs.getString("password"),
                        rs.getString("name"),
                        rs.getString("droits"),
                        rs.getInt("id_user")
                );
            }
            //System.out.println(retObj.getEmail());
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retObj;
    }

}
