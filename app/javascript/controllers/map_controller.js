import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { apiKey: String }
  connect() {
    mapboxgl.accessToken = 'pk.eyJ1IjoibGF1cmFiZWNrZXJ2IiwiYSI6ImNsNnFoMTVoZDBhc2QzYm4yZTIwNXRoNzAifQ.kU3LXYHjc9RX8xKKO3ugew';
    const map = new mapboxgl.Map({
      container: 'map', // container ID
      style: 'mapbox://styles/mapbox/streets-v11', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9, // starting zoom
    });

  }
}
