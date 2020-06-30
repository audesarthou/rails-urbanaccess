import mapboxgl from 'mapbox-gl';

const markerColor = (marker) => {
  const params = { color: ' ' }
  if (marker.average < 3) {
    params.color = 'red'
    return params;
  } else if (marker.average < 4) {
    params.color = 'orange'
    return params;
  } else {
    params.color = 'green'
    return params;
  }
};

const initMapboxShow = () => {
  const mapElement = document.getElementById('map-show');
  const marker = JSON.parse(mapElement.dataset.marker);
  console.log(marker)

  // Geolocation
  const geolocate = new mapboxgl.GeolocateControl({
  positionOptions: {
  enableHighAccuracy: true
  },
  trackUserLocation: true
  });

  const fitMapToMarker = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 14, duration: 0 });
};

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-show',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    map.addControl(geolocate);
    geolocate.on('geolocate', function() {
    console.log('A geolocate event has occurred.')
    });



      new mapboxgl.Marker( markerColor(marker))
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    fitMapToMarker(map, marker);

  }
};

export { initMapboxShow };
