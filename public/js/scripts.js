
var google_styles = [
  {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
  {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
  {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
  {
    featureType: 'administrative.locality',
    elementType: 'labels.text.fill',
    stylers: [{color: '#d59563'}]
  },
  {
    featureType: 'poi',
    elementType: 'labels.text.fill',
    stylers: [{color: '#d59563'}]
  },
  {
    featureType: 'poi.park',
    elementType: 'geometry',
    stylers: [{color: '#263c3f'}]
  },
  {
    featureType: 'poi.park',
    elementType: 'labels.text.fill',
    stylers: [{color: '#6b9a76'}]
  },
  {
    featureType: 'road',
    elementType: 'geometry',
    stylers: [{color: '#38414e'}]
  },
  {
    featureType: 'road',
    elementType: 'geometry.stroke',
    stylers: [{color: '#212a37'}]
  },
  {
    featureType: 'road',
    elementType: 'labels.text.fill',
    stylers: [{color: '#9ca5b3'}]
  },
  {
    featureType: 'road.highway',
    elementType: 'geometry',
    stylers: [{color: '#746855'}]
  },
  {
    featureType: 'road.highway',
    elementType: 'geometry.stroke',
    stylers: [{color: '#1f2835'}]
  },
  {
    featureType: 'road.highway',
    elementType: 'labels.text.fill',
    stylers: [{color: '#f3d19c'}]
  },
  {
    featureType: 'transit',
    elementType: 'geometry',
    stylers: [{color: '#2f3948'}]
  },
  {
    featureType: 'transit.station',
    elementType: 'labels.text.fill',
    stylers: [{color: '#d59563'}]
  },
  {
    featureType: 'water',
    elementType: 'geometry',
    stylers: [{color: '#17263c'}]
  },
  {
    featureType: 'water',
    elementType: 'labels.text.fill',
    stylers: [{color: '#515c6d'}]
  },
  {
    featureType: 'water',
    elementType: 'labels.text.stroke',
    stylers: [{color: '#17263c'}]
  },
  {
    featureType: 'administrative.country',
    elementType: 'geometry',
    stylers: [{color: 'white'}]
  }
];

// function to make the maker bounce twice on click
function toggleBounce(myMarker) {
  if (myMarker.getAnimation() !== null) {
      myMarker.setAnimation(null);
  } else {
      myMarker.setAnimation(google.maps.Animation.BOUNCE);
      setTimeout(function() {
      myMarker.setAnimation(null)
    }, 2800);
  }
}

//Function to display UFO reports upon icon click and populate sightings
function showReport(myCity) {
  $('#scrollable-content').show();
  $('#reports').empty();
  var reports = myCity['rep'];
  $('#reports').empty();
  reports.forEach(function(report) {
    $('#reports').append("<li>" + report + "</li>");
  });
}

// MAIN CREATE MAP FUNCTION
function initMapMain() {
  // create main map
  mapMain = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: {lat: 44.06, lng: -121.32}, // Bend OR
    styles: google_styles
  });
}; // END initFirstMap function

// ADD MARKERS TO EXISTING MAP
function addMarkers(cities) {
  // places each marker for the city
  cities.forEach(function(city) {
          var coord = new google.maps.LatLng(city['lat'],city['lng']);
          var testMarker = new google.maps.Marker({
            position: coord,
            animation: google.maps.Animation.DROP,
            icon: './img/ufo_marker_eerie.png',
            map: mapMain
          });
          // sightings reports
          var currentCity = city;
          testMarker.addListener('click', function() {
            showReport(currentCity);
          });
          testMarker.addListener('click', function() {
            toggleBounce(this);
          });
          // info window
          testMarker.addListener('click', function() {
            // pan to clicked pin
            infowindow.open(mapMain, this);
          });
          testMarker.addListener('click', function() {
            mapMain.panTo(coord);
          });
          var infowindow = new google.maps.InfoWindow({
            content: "<h3 class='blk_text'>" + city['nam'] + '</h3><br>' +
                      "<p class='blk_text'>Found: " + city['tot'] + ' UFOs <br>' +
                      "<p class='blk_text'>Lat= " + city['lat'] + "<br>" + " Long= " +
                      city['lng'] + "<p>"
          });
  });
}; // end addMarkers function


// function initMap(queryData) {
//   var startCoord = new google.maps.LatLng(queryData[0]["lat"],queryData[0]["lng"]);
//   // creates a new google maps object and centers on a area
//   map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 7,
//     // lat lng literal example
//     // center: {lat: 44.06, lng: -121.32},
//     center: startCoord,
//     styles: google_styles
//   });
//   // places each marker for the city
//   queryData.forEach(function(hash_obj) {
//     var coord = new google.maps.LatLng(hash_obj['lat'],hash_obj['lng']);
//     marker = new google.maps.Marker({
//       position: coord,
//       animation: google.maps.Animation.DROP,
//       icon: './img/ufo_marker_eerie.png',
//       map: map
//     });
//     marker.addListener('click', toggleBounce);
//     marker.addListener('click', showReport);
//   });
//
//   // setting up the marker window HTML content
//   var myContent = "";
//   if (queryData[0]['tot'] !== 0) {
//     myContent = "<h3 class='blk_text'>" + queryData[0]["nam"] + "</h3><br>" + "<p class='blk_text'>Found: " + queryData[0]["tot"] + " UFOs <br>" +
//     "<p class='blk_text'>Lat= " + queryData[0]["lat"] + "<br>" + " Long= " + queryData[0]["lng"] + "<p>";
//   }
//
//   function toggleBounce() {
//     if (marker.getAnimation() !== null) {
//       marker.setAnimation(null);
//     } else {
//         marker.setAnimation(google.maps.Animation.BOUNCE);
//       setTimeout(function() {
//           marker.setAnimation(null)
//       }, 2800);
//     }
//   }
//
//   //Function to display UFO reports upon icon click
//   function showReport() {
//     $('#scrollable-content').show();
//   }
//
//   var infowindow = new google.maps.InfoWindow({
//     content: myContent
//   });
//
//   google.maps.event.addListener(marker, 'click', function() {
//     infowindow.open(map, marker, queryData);
//   });
// }  // end initMap() function

///////////////////
// FRONT END
///////////////////
$(document).ready(function() {
  console.log("page loaded")
  // AJAX get request - to refresh the map
  $.get("/ruby_data", function(ruby_data) {
    initMapMain();
    parsed_data = JSON.parse(ruby_data);
    addMarkers(parsed_data);
  });

  $("#toggle_map").click(function() {
    $("#map_super").toggleClass("hide");
    console.log("toggle_map clicked");
  });

});

// old request for old initMap
// AJAX get request - to refresh the map
// $.get("/ruby_data", function(ruby_data) {
//   console.log("AJAX $.get happened");
//   parsed_data = JSON.parse(ruby_data);
//   initMap(parsed_data);
// });
