import { Controller } from "@hotwired/stimulus";
import { end } from "@popperjs/core";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  static targets = ["meteo", "image"];
  connect() {
    // // Getting User IP
    // fetch("https://ipinfo.io/json?token=2fcd5947e7154d")
    //   .then((response) => response.json())
    //   .then((jsonResponse) =>
    //     console.log(jsonResponse.ip, jsonResponse.country)
    //   );

    let city = "Caen";
    this.url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=a160dd207198aea05a45393825008bdf`;
    this.fetchMeteo();
  }

  fetchMeteo() {
    fetch(this.url)
      .then((response) => response.json())
      .then(this.displayMeteo.bind(this));
    // console.log(env["WEATHER_API_KEY"]);
  }

  displayMeteo(meteo) {
    this.imageTarget.innerHTML = "";
    let html = ``;
    console.log(meteo);
    // console.log(meteo.timezone);
    let sunsetTime = meteo.sys.sunset;
    let dateSunset = new Date(sunsetTime * 1000);
    let sunset = dateSunset.getHours() + 1;
    let sunriseTime = meteo.sys.sunrise;
    let dateSunrise = new Date(sunriseTime * 1000);
    let sunrise = dateSunrise.getHours() + 1;
    let today = new Date();
    let hour = today.getHours();
    // console.log(sunset);
    // console.log(sunrise);
    // console.log(hour);
    // console.log(meteo.weather[0].main);
    if (hour < sunrise || hour > sunset) {
      html = `<img src="assets/moon.png">`;
    } //  else if (hour > sunrise || hour < sunset) {
    //   html = `<img src="assets/sun.png">`;
    // } else if (
    //   (hour > sunrise || hour < sunset) &&
    //   (meteo.weather[0].description = "Clouds")
    // ) {
    //   html = `<img src="assets/clouds.png">`;
    // } else if (
    //   (hour > sunrise || hour < sunset) &&
    //   (meteo.weather[0].description = "Rain")
    // ) {
    //   html = `<img src="assets/rain.png">`;
    //}
    else {
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
