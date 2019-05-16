<%-- 
    Document   : footer
    Created on : 9 mai 2019, 15:45:40
    Author     : Marine Veyssiere
--%>
<c:choose>
<c:when test="${!empty sessionScope.sessionUtilisateur}"><p class="success footer">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p></c:when>
<c:otherwise><p class="footer">Vous n'êtes pas connecté(e) </p></c:otherwise>
</c:choose>

<p class="footer"> Les développeurs de ce site web sont: Marine Veyssiere, Jérémie Estival, Julien Martinez et Amine Semmoud </p>

