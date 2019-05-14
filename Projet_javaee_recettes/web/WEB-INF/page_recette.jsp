a<%-- 
    Document   : page_recette
    Created on : 13 mai 2019, 11:08:57
    Author     : Marine Veyssiere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Recettes</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/recette.css"/>" />
    </head>
    <body>
        <%-- <c:import url="header.jsp"/> --%>
        
        <%--  <c:out value="${recette.titre}" --%>
        
        <h1>titre recette <c:out value="${recette.titre}"/> </h1>
        
        <p>date <c:out value="${recette.date}"/> </p>
        
        <p> ingredients recette <c:out value="${recette.ingredients}"/> </p>
        <p>description recette <c:out value="${recette.description}"/> </p>
        
        <p>Nombre de votes positifs <c:out value="${recette.votes_positifs}"/></p>
        <p>Nombre de votes négatifs  <c:out value="${recette.votes_negatifs}"/></p>
            
        <c:import url="footer.jsp"/>
    </body>
</html>