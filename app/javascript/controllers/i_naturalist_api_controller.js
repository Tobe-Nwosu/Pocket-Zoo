import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="i-naturalist-api"
export default class extends Controller {
  connect() {
    // console.log("potato");
    this.apiCall();
  }

  apiCall() {
    fetch(
      "https://api.inaturalist.org/v1/taxa?q=bird&rank=species&all_names=true"
    )
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
      });
  }
}
