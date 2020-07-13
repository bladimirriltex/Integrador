/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function (){
    $('tr #deleteitem').click(function (e){
        e.preventDefault();
        var elemento=$(this);
        var idplato=elemento.parent().find('#idarticulo').text();
        $.ajax({
            url: "borraritem",
            type: 'POST',
            data: {idplato: idplato},
            success: function (r) {
                elemento.parent().parent().remove(); 
                var elementostabla=$('#card-table tr');
                if (elementostabla.length<=1){
                    $('#card-table').append("<h4>No hay articulos en tu carrito</h4>");
                }
            }
        });
    });
    
   
    
});

