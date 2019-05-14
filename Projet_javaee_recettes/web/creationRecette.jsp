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
        <jsp:include page="header.html"/>
        <div class="row">
        <h1 class="text-info col-md-4 offset-md-4">Création d'une recette</h1>
        </div>
        <form>
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label contentEditable role='textbox' aria-multiline='true' for="titre">Titre </label><input id="titre" type="text" class="form-control">
            </section>
        </div>
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label for="ingredients">Ingrédients</label>
                <textarea class="form-control" rows="5" id="ingredients"></textarea>
                <!--<input id="ingredients" type="textarea" class="form-control">-->
            </section>
        </div>
        <div class="row">
            <section class="form-group col-md-4 offset-md-4">
                <label for="recette">Recette</label>                
                <textarea class="form-control" rows="6" id="recette"></textarea>
                <!--<input id="recette" type="textarea" class="form-control">-->
            </section>
        </div>
        <button type="button" class="btn btn-warning col-md-4 offset-md-4" id="envoyer">Enregistrer</button>
    </form>
       
    <%--<jsp:include page="footer.html"/>--%>
    </body>
</html>
