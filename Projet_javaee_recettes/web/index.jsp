<%-- 
    Document   : index
    Created on : 9 mai 2019, 15:49:56
    Author     : Marine Veyssiere
--%>
<html>
<head>
<title>Accueil</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-
scale=1.0">
</head>
<body>
<nav>
<a href="<c:url value="/inscription"/>">Inscription</a>
<a href="<c:url value="/connection"/>">Connexion</a>
<a href="<c:url value="/logout"/>">Deconnexion</a>


<a href="<c:url value="/recette?titre=SauceTomate"/>">Sauce Tomate</a>
</nav>
<c:import url="/WEB-INF/footer.jsp"/>
</body>
</html>
