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
        <script type="text/javascript" defer src="JS/accueil.js"></script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp"/>
        <div id="meilleur">
            <h1>Les meilleurs recettes</h1>
            
        </div>
        <div id="derniere">
             <h1>Les dernieres recettes</h1>
        </div>
        <%--<jsp:include page="footer.html"/>--%>
    </body>
</html>
