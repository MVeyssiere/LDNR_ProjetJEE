package servlets;

import beans.Recette;
import forms.creationRecetteForm;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Marine V
 */
public class creationRecette extends HttpServlet {

    /* Des constantes */
    public static final String VIEW = "/WEB-INF/creationRecette.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        creationRecetteForm recetteForm = new creationRecetteForm();

        Recette recette = recetteForm.createRecette(req);

        /* stockage formulaire et bean dans l'objet request*/
//        req.setAttribute(ATT_FORM, recetteForm);
        req.setAttribute("createRecette", recette);
        req.setAttribute("form", recetteForm);

        /* Transmission des objets request/response au JSP*/
        this.getServletContext().getRequestDispatcher(VIEW).forward(req, resp);
    }


}
