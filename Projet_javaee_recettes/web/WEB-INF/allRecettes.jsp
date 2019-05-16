<%-- 
    Document   : allrecette
    Created on : 16 mai 2019, 08:55:00
    Author     : stagldnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Les meilleures recettes</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="inc/allRecettes.css" />
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1 id="titre">Toutes les recettes</h1>
        <div id = "conteneur">
            <c:forEach items='${requestScope.recettes}' var='recette'>
                 <div id="div1" >
                        <a href="${pageContext.request.contextPath}/uneRecette?id_recette=<c:out value="${recette.id_recette}"/>"><img src="<c:out value="${recette.image}"/>" ></a>
                        <h4><c:out value="${recette.titre}"/></h4>
                 </div>
             </c:forEach>
        </div>
        <div class="notrefooteur">
        <jsp:include page="footer.jsp"/>
        </div>
        
    </body>
</html>
