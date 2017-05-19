/////////////////
// BACK END
////////////////

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

///////////////////////////////////////////////////////
//// initMap = master google maps API output
//////////////////////////////////////////////////////
function initMap(queryData) {
  // console.log("queryData: " , queryData);
  // let startCoord = new google.maps.LatLng(queryData[0]["lat"],queryData[0]["lng"]);
  // creates a new google maps object and centers on a area
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: new google.maps.LatLng(43.8041, -120.5542),
    styles: google_styles
  });






  // LOOP TO CREATE EACH MARKER
  queryData.forEach(function(hash_obj) {

    marker = new google.maps.Marker({
      position: new google.maps.LatLng(hash_obj['lat'],hash_obj['lng']),
      animation: google.maps.Animation.DROP,
      icon: './img/ufo_marker_eerie.png',  // replace default marker icon with our UFO!
      map: map
    });

    // build the the marker window HTML content
    var myContent = "";
    if (hash_obj['tot'] !== 0) {
      myContent = "<h3 class='blk_text'>" + hash_obj["nam"] + "</h3><br>" + "<p class='blk_text'>Found: " + hash_obj["tot"] + " UFOs <br>" +
      "<p class='blk_text'>Lat= " + hash_obj["lat"] + "<br>" + " Long= " + hash_obj["lng"] + "<p>";
    }
    // Create the marker info window
    var infowindow = new google.maps.InfoWindow({
      content: myContent
    });
    infowindow.open(map, marker, queryData);


    // When the user clicks the icon...
    marker.addListener('click', toggleBounce);
    marker.addListener('click', showReport);
    google.maps.event.addListener(marker, 'click', function() {

    });

  });  // END LOOP for creating all the markers






  function toggleBounce() {
    if (marker.getAnimation() !== null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
      setTimeout(function() {
          marker.setAnimation(null)
      }, 2800);
    }
  }

  //Function to display UFO reports upon icon click
  function showReport() {
    $('#scrollable-content').show();
  }

}  //  END initMAP function

///////////////////
// FRONT END
///////////////////
$(document).ready(function() {

  test_hash = $("#json_test1").text();

  $("#toggle_map").click(function() {
    $("#map_super").toggleClass("hide");
    console.log("toggle_map clicked");
  });

  $("#all_namies").click(function() {
    console.log("all_cities clicked");
  });

  $.ajax({
    method: 'post',
    dataType: 'json',
    contentType: "application/json; charset=utf-8",
    url: '/ruby_data',
    success: function(ruby_data){
      console.log("AJAX $.get('/ruby_data' happened");
      // console.log(ruby_data)
      initMap(ruby_data);
    }
  });

  // OLD WORKING METHOD
  // AJAX get request - to refresh the map
  // $.get("/ruby_data", function(ruby_data) {
  //   console.log("AJAX $.get('/ruby_data' happened");
  //   parsed_data = JSON.parse(ruby_data);
  //   initMap(parsed_data);
  // });

});
