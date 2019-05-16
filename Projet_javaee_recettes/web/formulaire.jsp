<%-- 
    Document   : index
    Created on : 9 mai 2019, 15:49:56
    Author     : Marine Veyssiere
--%>
<html>
<head>
<title>Accueil</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">  
<link  rel="stylesheet" type="text/css" href="inc/form.css">
</head>
<body>
    <h1>Les meilleures recettes</h1>
    <p>Pour accéder aux recettes, vous pouvez vous connecter, créer un compte ou entrer en tant que visiteur.</p><br/>
    
    <c:choose>
        <c:when test="${!empty sessionScope.sessionUtilisateur}"><p class="success">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p></c:when>
        <c:otherwise><p>Vous n'êtes pas connecté(e) </p></c:otherwise>
    </c:choose>
        <br/>

    <form  method="post" action="connection">
            <fieldset>     
                
                <legend>Connexion</legend>
                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${user.email}"/>" size="20" maxlength="60" />
                <span class="error">${form.errors['email']}</span>
                <br /><label for="password">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="password" name="password" value="" size="20" maxlength="20" />
                <span class="error">${form.errors['password']}</span>
                <br /><input type="submit" value="Connexion" class="noLabel" />
                <p class="${empty form.errors ? 'success' : 'error'}">${form.result}</p>
            </fieldset>  
            <%-- Vérification de la présence d'un objet utilisateur en session --%>
            <%--
            <c:if test="${!empty sessionScope.sessionUtilisateur}">
                <p class="success">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
            </c:if> --%>
        </form>
   
        
        <form method="post" action="inscription">
            <fieldset>
                <legend>Inscription</legend>
                <p>Vous pouvez vous inscrire via ce formulaire.</p>
                <label for="email">Adresse email <span class="mandatory">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${user.email}" />" size="20" maxlength="60" />
                <span class =" error">${form.errors.email}</span>                
                <br />
                <label for="password">Mot de passe <span class="mandatory">*</span></label>
                <input type="password" id="password" name="password" value="<c:out value="${user.password}" />" size="20" maxlength="20" />
                <span class =" error">${form.errors.password}</span>
                <br />
                <label for="confirm">Confirmation <span class="mandatory">*</span></label>
                <input type="password" id="confirm" name="confirm" value="" size="20" maxlength="20" />
                <span class =" error">${form.errors.confirm}</span>
                <br />
                <label for="username">Nom d'utilisateur</label>
                <input type="text" id="username" name="username" value="<c:out value = "${user.name}" />" size="20" maxlength="20" />
                <span class =" error">${form.errors.name}</span>
                <br />
                <input type="submit" value="Inscription" class="noLabel" />
                <p>Les champs marqués d'un <span class="mandatory">*</span> sont obligatoires.</p>
                <p class="${(empty form.errors) ? 'success' : 'error'}"> ${form.result} </p>
            </fieldset>
            
        </form>
            
           <!--<a class="btn btn-warning col-md-3" href="${pageContext.request.contextPath}/connection" role="button">Visiteur</a>-->
           
           <form action="${pageContext.request.contextPath}/connection" method="post">
                <input type="submit" name="visit" value="Visiteur" />
            </form>

</body>
</html>
