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
    return params;
  };

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const geolocate = new mapboxgl.GeolocateControl({
  positionOptions: {
  enableHighAccuracy: true
  },
  trackUserLocation: true
  });

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
    });

    map.addControl(geolocate);
    geolocate.on('geolocate', function() {
    console.log('A geolocate event has occurred.')
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
    new mapboxgl.Marker( markerColor(marker) )
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
      .setHTML('<h3>' + marker.name + '</h3><p>' + marker.description + '</p>'))
      .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};




export { initMapbox };
