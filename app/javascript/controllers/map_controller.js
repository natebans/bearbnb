import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values ={apiKey: String}
  connect() {
  <div id='map' style='width: 400px; height: 300px;'></div>
<script>
  mapboxgl.accessToken = this.apiKeyValue
  const map = new mapboxgl.Map({
    container: this.element
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [-74.5, 40], // starting position [lng, lat]
    zoom: 9, // starting zoom
  });
</script>
  }
}
