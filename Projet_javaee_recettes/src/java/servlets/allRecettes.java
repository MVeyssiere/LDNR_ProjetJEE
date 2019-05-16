package servlets;

import DAO.DAORecette;
import beans.Recette;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Marine V
 */
public class allRecettes extends HttpServlet {

    public static final String VIEW = "/WEB-INF/allRecettes.jsp";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DAORecette daorecette = new DAORecette();
        List<Recette> recette = daorecette.findAll();
        req.setAttribute("recettes", recette);

        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }


}
