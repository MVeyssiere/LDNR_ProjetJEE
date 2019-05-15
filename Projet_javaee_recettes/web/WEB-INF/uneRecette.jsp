<%-- 
    Document   : recettes
    Created on : 14 mai 2019, 08:23:35
    Author     : stagldnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recette</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">  
        <link type="text/css" rel="stylesheet" href="inc/recettes.css" />       
    </head>
    <body>
        <jsp:include  page="header.jsp"/>
        <h1><c:out value = "${recette.titre}"/></h1>
        <div id="titres">
            <h2>Ingrédients</h2>   
            <h2>Description</h2>   
        </div>
        <div id="twitchContent">            
            <p id = "dimension1"> <c:out value = "${recette.ingredients}"/> </p>
            <p id = "dimension2"> ${recette.description} </p>    
        </div>
        
        <c:forEach items="${requestScope.commentaire}" var="comm">
           <p>${comm.titre}</p>
           <p>${comm.corps}</p>
        </c:forEach>

        <div id ="adapt">
            <label> vote oui</label>
            <label> vote non</label>
        </div>
        <label><c:out value = "${recette.date}"/></label>
    </body>
</html>
