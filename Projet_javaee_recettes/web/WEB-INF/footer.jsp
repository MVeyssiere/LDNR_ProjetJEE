<%-- 
    Document   : footer
    Created on : 9 mai 2019, 15:45:40
    Author     : Marine Veyssiere
--%>
<c:choose>
<c:when test="${!empty sessionScope.sessionUtilisateur}"><p class="success footer">Vous �tes connect�(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p></c:when>
<c:otherwise><p class="footer">Vous n'�tes pas connect�(e) </p></c:otherwise>
</c:choose>

<p class="footer"> Les d�veloppeurs de ce site web sont: Marine Veyssiere, J�r�mie Estival, Julien Martinez et Amine Semmoud </p>

