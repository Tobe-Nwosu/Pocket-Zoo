import { Controller } from "@hotwired/stimulus";
import { end } from "@popperjs/core";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  static targets = ["meteo", "image"];
  connect() {
    // console.log("hello from weather controller");
    let city = "lyon";
    this.url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=a160dd207198aea05a45393825008bdf&units=metric`;
    this.fetchMeteo();
    this.displayImage();
  }

  fetchMeteo() {
    fetch(this.url)
      .then((response) => response.json())
      .then(this.displayMeteo.bind(this));
  }

  displayImage() {
    this.displayImage.bind(this);
    this.imageTarget.innerHTML = "";
    const html;
    if (meteo.wind.speed > 0) {
       html = `<img src="assets/sun.png">`;
    } else {
       html = `<img src="assets/moon.png">`;
    }
    return html;
    this.imageTarget.insertAdjacentHTML("beforeend", html);
  }

  displayMeteo(meteo) {
    // console.log(meteo);
    this.meteoTarget.innerHTML = "";
    const html = `
    <img src="assets/green-city.png"> <p> ${meteo.name} <p>
    <img src="assets/windock.png"> <p> ${meteo.wind.speed} km/h<p>
    <img src="assets/hot.png"> <p> ${meteo.main.temp}°C <p>
    `;
    this.meteoTarget.insertAdjacentHTML("beforeend", html);
  }
}

{
  /* <p> ${meteo.weather[0].description}<p> */
}
// console.log(data.name);
// console.log(data.wind.speed);
// console.log(data.wind.speed);
// console.log(data.weather[0].main);
// console.log(data.weather[0].description);
