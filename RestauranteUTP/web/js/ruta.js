/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

"use strict";

      function initMap() {
        const directionsService = new google.maps.DirectionsService();
        const directionsRenderer = new google.maps.DirectionsRenderer();
        const map = new google.maps.Map(document.getElementById("map"), {
          zoom: 10,
          center: {

            lat: -16.398824,
            lng: -71.536908
          }
        });
        directionsRenderer.setMap(map);
        document.getElementById("submit").addEventListener("click", () => {
          calculateAndDisplayRoute(directionsService, directionsRenderer);
        });
      }

      function calculateAndDisplayRoute(directionsService, directionsRenderer) {
        

        

        directionsService.route(
          {
            origin: document.getElementById("start").value,
            destination: document.getElementById("end").value,
            
            optimizeWaypoints: true,
            travelMode: google.maps.TravelMode.DRIVING
          },
          (response, status) => {
            if (status === "OK") {
              directionsRenderer.setDirections(response);
              

              
            } else {
              window.alert("Directions request failed due to " + status);
            }
          }
        );
      }
