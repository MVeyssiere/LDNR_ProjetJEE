<%-- 
    Document   : galerie
    Created on : 15 mai 2019, 18:00:53
    Author     : stagldnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>galerie</title>
        
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/accueil.css"/>" />
    </head>
    <body>
        <div id="all">
             <h1>La galerie de recette</h1>
             
             <c:forEach items='${requestScope.recetteAll}' var='recetteAll'>
                 
                 <div class="recetteDerniere" >
                 <a href="page_recette.jsp"><img src="<c:out value="${recetteAll.image}"/>" ></a>
                 <h3><c:out value="${recetteAll.titre}"/></h3>
                 </div>
             </c:forEach>
        </div>
    </body>
</html>
