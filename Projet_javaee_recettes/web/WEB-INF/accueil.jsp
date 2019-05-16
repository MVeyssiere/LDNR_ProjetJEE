<%-- 
    Document   : accueil.jsp
    Created on : 14 mai 2019, 13:20:15
    Author     : Julien Martinez
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
       <jsp:include page="header.jsp"/>
       
        <div id="meilleur">
            <h1>Les meilleurs recettes</h1>
            <c:forEach items='${requestScope.recetteTop}' var='recetteTop'>
                 <div class="recetteMeilleur" >
                        <a href="${pageContext.request.contextPath}/uneRecette?id_recette=<c:out value="${recetteTop.id_recette}"/>"><img src="<c:out value="${recetteTop.image}"/>" ></a>
                        <h3><c:out value="${recetteTop.titre}"/></h3>
                        <p><c:out value="${recetteTop.description}"/></p> 
                        <a href="${pageContext.request.contextPath}/uneRecette?id_recette=<c:out value="${recetteTop.id_recette}"/>">lire la suite...</a>
                        
                 </div>
             </c:forEach>          
        </div>
        <div id="derniere">
             <h1>Les dernieres recettes</h1>
             
             <c:forEach items='${requestScope.recetteLast}' var='recetteLast'>
                 
                 <div class="recetteDerniere" >
                 <a href="${pageContext.request.contextPath}/uneRecette?id_recette=<c:out value="${recetteLast.id_recette}"/>"><img src="<c:out value="${recetteLast.image}"/>" ></a>
                 <h4><c:out value="${recetteLast.titre}"/></h4>
                
                 </div>
             </c:forEach>
        </div>
    </body>
</html>
