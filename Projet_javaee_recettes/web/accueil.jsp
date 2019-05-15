<%-- 
    Document   : accueil.jsp
    Created on : 14 mai 2019, 13:20:15
    Author     : stagldnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accueil</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">  
        <link rel="stylesheet" type="text/css" href="inc/accueil.css">        
        
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp"/>
        <div id="meilleur">
            <h1>Les meilleurs recettes</h1>
            <c:forEach items='${requestScope.recetteTop}' var='recetteTop'>
                 
                 <div class="recetteMeilleur" >
                 <a href="page_recette.jsp"><img src="https://static.cuisineaz.com/400x320/i136556-gateau-de-grand-maman.jpeg" ></a>
                 <h3><c:out value="${recetteTop.titre}"/></h3>
                 <p><c:out value="${recetteTop.description}"/></p>
                 
                 </div>
             </c:forEach>
          
        </div>
          <h1>RAETFDH</h1>
        <div id="derniere">
             <h1>Les dernieres recettes</h1>
             
             <c:forEach items='${requestScope.recetteAll}' var='recetteAll'>
                 
                 <div class="recetteDerniere" >
                 <a href="page_recette.jsp"><img src="https://static.cuisineaz.com/400x320/i136556-gateau-de-grand-maman.jpeg" ></a>
                 <h3><c:out value="${recetteAll.titre}"/></h3>
                 </div>
             </c:forEach>
        </div>
        
        <%--<jsp:include page="footer.html"/>--%>
    </body>
</html>
