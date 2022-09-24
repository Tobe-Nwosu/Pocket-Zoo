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
  }

  fetchMeteo() {
    fetch(this.url)
      .then((response) => response.json())
      .then(this.displayMeteo.bind(this));
  }

  displayMeteo(meteo) {
    this.imageTarget.innerHTML = "";
    let html = ``;
    console.log(meteo);
    console.log(meteo.timezone);
    let sunsetTime = meteo.sys.sunset;
    let dateSunset = new Date(sunsetTime * 1000);
    let sunset = dateSunset.getHours() + 1;
    let sunriseTime = meteo.sys.sunrise;
    let dateSunrise = new Date(sunriseTime * 1000);
    let sunrise = dateSunrise.getHours() + 1;
    let date = new Date();
    let hour = date.getHours();
    console.log(sunset);
    console.log(sunrise);
    console.log(hour);
    console.log(meteo.weather[0].main);
    if ((meteo.weather[0].main = "Clouds")) {
      html = `<img src="assets/moon.png">`;
    } else {
      html = `<img src="assets/sun.png">`;
    }
    this.imageTarget.insertAdjacentHTML("beforeend", html);

    this.meteoTarget.innerHTML = "";
    const html2 = `
    <img src="assets/green-city.png"> <p> ${meteo.name} <p>
    <img src="assets/windock.png"> <p> ${meteo.wind.speed} km/h<p>
    <img src="assets/hot.png"> <p> ${meteo.main.temp}°C <p>
    `;
    this.meteoTarget.insertAdjacentHTML("beforeend", html2);
  }
}

{
  /* <p> ${meteo.weather[0].description}<p> */
}
// console.log(data.name);
// console.log(data.wind.speed);
// console.log(data.wind.speed);
//
// console.log(data.weather[0].description);
