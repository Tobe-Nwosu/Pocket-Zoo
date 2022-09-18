import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  connect() {
    // console.log("hello from weather controller");
  }

  fetchmeteo() {
    fetch(
      // `https://api.openweathermap.org/data/2.5/forecast?lat={45.7}&lon={4.8}&appid=a160dd207198aea05a45393825008bdf`
      "https://api.openweathermap.org/data/2.5/weather?q=london&appid=a160dd207198aea05a45393825008bdf&units=metric"
    )
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        // console.log(data.name);
        // console.log(data.rain);
        console.log(data.first);
      });
  }
}
