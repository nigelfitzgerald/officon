import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("hello")
    this.element.textContent = "Hello World!"
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
  }
}
