<%-- 
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
        <link type="text/css" rel="stylesheet" href="<c:url value="inc/recette.css"/>" />
    </head>
    <body>
        <%-- <c:import url="header.jsp"/> --%>
        
        <%--  <c:out value="${recette.titre}" --%>
        
        <h1>titre recette <c:out value="${recette.titre}"/> </h1>
        <p>date</p>
        
        <p> ingredients recette</p>
        <p>description recette</p>
        
        <p>Nombre de votes positifs</p>
        <p>Nombre de votes négatifs</p>
            
        <c:import url="footer.jsp"/>
    </body>
</html>