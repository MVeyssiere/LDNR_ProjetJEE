<%-- 
    Document   : creationRecette
    Created on : 14 mai 2019, 17:37:52
    Author     : Marine Veyssiere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--<link type="text/css" rel="stylesheet" href="inc/form.css" />-->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">  
         <link rel="stylesheet" type="text/css" href="inc/creationRecette.css">   
        <title>Création d'une recette</title>
    </head>
    <body>
        <jsp:include page="../header.html"/>
        <div class="row">
        <h1 class="text-info col-md-4 offset-md-4">Création d'une recette</h1>    
        
        <div class="${(empty form.errors) ? 'p-3 mb-2 bg-success text-white' : 'p-3 mb-2 bg-danger text-white'}"> ${form.result} </div>
        <%--<p class="${(empty form.errors) ? 'success' : 'error'}"> ${form.result} </p>--%>
        </div>
        <form method="post" action="creationRecette">
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label contentEditable role='textbox' aria-multiline='true' for="titre">Titre </label>
                <input id="titre" name = "titre" type="text" class="form-control" value="<c:out value = "${createRecette.titre}" />">
                <span class="error">${form.errors['titre']}</span>
            </section>
        </div>
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label for="ingredients">Ingrédients</label>
                <textarea class="form-control" rows="5" id="ingredients" name ="ingredients" ><c:out value = "${createRecette.ingredients}" /></textarea>                
                <span class="error">${form.errors['ingredients']}</span>
                <!--<input id="ingredients" type="textarea" class="form-control">-->
            </section>
        </div>
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label for="recette">Recette</label>                
                <textarea class="form-control" rows="6" id="recette" name="recette"><c:out value = "${createRecette.description}" /></textarea>
                <span class="error">${form.errors['description']}</span>
                <!--<input id="recette" type="textarea" class="form-control">-->
            </section>
        </div>
        <button type="submit" class="btn btn-warning col-md-4 offset-md-4">Enregistrer</button>
        <!--<button type="button" class="btn btn-warning col-md-4 offset-md-4" id="envoyer">Enregistrer</button>-->
    </form>
       
    <%--<jsp:include page="footer.html"/>--%>
    </body>
</html>
