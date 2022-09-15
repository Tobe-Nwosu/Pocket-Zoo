import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  connect() {
    // console.log("hello from weather controller");
  }

  fetchmeteo() {
    fetch(
      // `https://api.openweathermap.org/data/2.5/forecast?lat={45.7}&lon={4.8}&appid=`
      "https://api.openweathermap.org/data/2.5/weather?q=london&appid=&units=metric"
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
