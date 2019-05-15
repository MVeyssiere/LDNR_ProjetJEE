<%-- 
    Document   : headedr
    Created on : 15 mai 2019, 08:43:14
    Author     : Marine Veyssiere
--%>
    
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Les meilleures recettes</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
                 <li class="nav-item active"><a  class="nav-link" href="/accueil.jsp">Accueil</a></li>
                 <li class="nav-item"><a  class="nav-link" href="<c:url value='/accueil.jsp'/>">Les recettes</a></li>
                 <li class="nav-item"><a  class="nav-link" href="<c:url value='/creationRecette'/>">Cr�er une recette</a></li>
                 <li class="nav-item"><a  class="nav-link" href="#">Contact</a></li>
                 <c:choose>
                     <c:when test="${!empty sessionScope.sessionUtilisateur}">                    
                            <li class="nav-item">Bonjour ${sessionScope.sessionUtilisateur.name}</li>
                            <li class="nav-item"><a  class="nav-link" href="<c:url value='/logout'/>">D�connexion</a></li>
                     </c:when>
                     <c:otherwise>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/inscription'/>">Inscription</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/connection'/>">Connexion</a></li>                         
                     </c:otherwise>
                 </c:choose>
           </ul>
    </div>
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Rechercher une recette" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
    </form>
</nav>
<!--        
        <nav>
            <ul>
                <li><a>recette</a></li>
                <li id="titre"><a id ="reference">les meilleures recettes</a></li>
                <li><a>infos</a></li>
                <li><a>contact</a></li>
                <li><a>connexion</a></li>
            </ul>
            </nav>-->
