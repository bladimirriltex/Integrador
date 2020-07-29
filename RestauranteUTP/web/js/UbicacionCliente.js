/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function findMe(){
      var output = document.getElementById('map');

      // Verificar si soporta geolocalizacion
      if (navigator.geolocation) {
        output.innerHTML = "<p>Tu navegador soporta Geolocalizacion</p>";
      }else{
        output.innerHTML = "<p>Tu navegador no soporta Geolocalizacion</p>";
      }

      

      //Obtenemos latitud y longitud
      function localizacion(posicion){

        var latitude = posicion.coords.latitude;
        var longitude = posicion.coords.longitude;
        
        
        
        var posicion={lat:latitude, lng: longitude}
        
        const inplat=document.getElementById("lat");
        const inplong=document.getElementById("lng");
        inplat.value=latitude;
        inplong.value=longitude;
       
        const map = new google.maps.Map(document.getElementById("map"), {
           zoom: 16,
           center: {

             lat: latitude,
             lng: longitude
           }
         });
       
      
      var marker = new google.maps.Marker({position: posicion,animation: google.maps.Animation.DROP, map: map, label: {
       color: 'black',
       fontWeight: 'bold',
       text: 'Tu ubicación',
     },});
      }

      function error(){
        output.innerHTML = "<p>No se pudo obtener tu ubicación</p>";

      }

      navigator.geolocation.getCurrentPosition(localizacion,error);

    }
