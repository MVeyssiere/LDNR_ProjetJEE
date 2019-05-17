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
        <link type="text/css" rel="stylesheet" href="inc/uneRecette.css" />       
    </head>
    <body>
        <jsp:include  page="header.jsp"/>
        <h1 class="text-secondary col-md-6 offset-md-5"><c:out value = "${recette.titre}"/></h1>
<%--        <h5> Votes +: <c:out value = "${recette.votes_positifs}"/></h5>
        <h5> Votes -: <c:out value = "${recette.votes_negatifs}"/></h5>--%>
        <br/>
        <div id="titres">
            <h2 class="text-secondary col-md-3">Ingrédients</h2>   
            <h2 class="text-secondary col-md-6">Description</h2>   
        </div>
        <div id="twitchContent">            
            <p id = "dimension1"> ${recette.ingredients}" </p>
            <p id = "dimension2"> ${recette.description} </p>    
        </div>
         <form  method="post" action="uneRecette?id_recette=${recette.id_recette}">
        <div class="panel-heading">
            <button type="submit" name="uneRecette" value="BON" class="btn btn-primary"/>BON </button>
            <button type="submit" name="uneRecette" value="PASBON" class="btn btn-primary">PAS BON</button>
        </div>
        </form>
        <h2 class="text-secondary offset-md-2">Commentaires</h2>
        <c:forEach items="${requestScope.commentaire}" var="comm">
            <div class="border border-primary bg-light comments">
                <p class="text-dark border border-primary bg-light titreComment">id_utilisateur: <c:out value = "${comm.FK_id_user}"/></p>
                <p class="text-dark border border-primary bg-light titreComment"><c:out value = "${comm.titre}"/></p>
                <p class="text-dark border border-primary bg-light corpsComment">${comm.corps}</p>
            </div>
        </c:forEach>
       
        <label><c:out value = "${recette.date}"/></label>
        
         <jsp:include page="footer.jsp"/>
    </body>
</html>
