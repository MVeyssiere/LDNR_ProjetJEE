<%-- 
    Document   : headedr
    Created on : 15 mai 2019, 08:43:14
    Author     : Marine Veyssiere
--%>
    
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Les meilleures recettes</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
               <li class="nav-item active"><a  class="nav-link" href="<c:url value='/connection'/>">Accueil</a></li>
                 <li class="nav-item"><a  class="nav-link" href="<c:url value='/allRecettes'/>">Les recettes</a></li>
                 
                <c:choose>
                     <c:when test="${sessionScope.sessionUtilisateur.droits == 'user'}">
                 <li class="nav-item"><a  class="nav-link" href="<c:url value='/creationRecette'/>">Créer une recette</a></li>
                     </c:when>
                     <c:otherwise>                     
                     </c:otherwise>
                 </c:choose>
                 
                 <c:choose>
                     <c:when test="${!empty sessionScope.sessionUtilisateur}">                    
                            <li class="nav-item text-success m-2">Bonjour ${sessionScope.sessionUtilisateur.name}</li>
                            <li class="nav-item"><a  class="nav-link" href="<c:url value='/logout'/>">Déconnexion</a></li>
                     </c:when>
                     <c:otherwise>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">Inscription</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">Connexion</a></li>                         
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
