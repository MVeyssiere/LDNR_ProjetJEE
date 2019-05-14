/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


window.onload = function(){

    init();
};

function init(){
    affichageTop();
    affichageDerniere();
    
}

function affichageTop(){
    var r ="";
    for(var i = 1; i < 4 ; i++)
    {
        r += '<div class="recetteMeilleur">';
        r += '<img src="https://static.cuisineaz.com/400x320/i136556-gateau-de-grand-maman.jpeg" >';
        r += '<h3>Gateau</h3>';
        r += '<p>';
        r += 'Et quoniam apud eos ut in capite mundi morborum acerbitates celsius dominantur, ad quos vel sedandos omnis professio medendi torpescit, excogitatum est adminiculum sospitale nequi amicum perferentem ';
        r +=  'similia videat, additumque est cautionibus paucis remedium aliud satis validum, ut famulos percontatum missos quem ad modum valeant noti hac aegritudine colligati, non ante recipiant domum quam lavacro purgaverint corpus. ita etiam alienis oculis visa metuitur labes.' ;
        r +=  'amicorum bene suadentium valeat auctoritas, eaque et adhibeatur ad monendum non modo aperte sed etiam acriter, si res postulabit, et adhibitae pareatur.';
        r +=  ' </p>';
       
        r += '<a href="page_recette.jsp">Lire la suite...</a>';
        r += '</div>' ;
        
    }
    
    document.getElementById('meilleur').innerHTML += r;
}

function affichageDerniere(){
    var s ="";
    for(var i = 1; i < 4 ; i++)
    {
        s += '<div class="recetteDerniere" >';
        s += '<a href="page_recette.jsp"><img src="https://static.cuisineaz.com/400x320/i136556-gateau-de-grand-maman.jpeg" ></a>';
        s += '<h3>Gateau</h3>';
        s += '</div>' ;
        
    }
    
    document.getElementById('derniere').innerHTML += s;
}

