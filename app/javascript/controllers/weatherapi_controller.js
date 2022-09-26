import { Controller } from "@hotwired/stimulus";
import { end } from "@popperjs/core";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  static targets = ["meteo", "image"];
  connect() {
    // Getting User IP
    navigator.geolocation.getCurrentPosition((data) => {
      const userLat = data.coords.latitude;
      const userLong = data.coords.longitude;
      this.fetchMeteo(
        `https://api.openweathermap.org/data/2.5/weather?lat=${userLat}&lon=${userLong}&appid=a160dd207198aea05a45393825008bdf`
      );
    });
  }

  fetchMeteo(url) {
    fetch(url)
      .then((response) => response.json())
      .then(this.displayMeteo.bind(this));
    // console.log(env["WEATHER_API_KEY"]);
  }

  displayMeteo(meteo) {
    this.imageTarget.innerHTML = "";
    let html = ``;
    // console.log(meteo);
    let sunsetTime = meteo.sys.sunset;
    let dateSunset = new Date(sunsetTime * 1000);
    let sunset = dateSunset.getHours();
    let sunriseTime = meteo.sys.sunrise;
    let dateSunrise = new Date(sunriseTime * 1000);
    let sunrise = dateSunrise.getHours();
    let today = new Date();
    let hour = today.getHours();
    // console.log(sunset);
    // console.log(sunrise);
    // console.log(hour);
    // console.log(meteo.weather[0].main);
    if (hour < sunrise || hour > sunset) {
      html = `<img src="assets/moon.png">`;
    } else {
      html = `<img src="assets/sun.png">`;
    }
    this.imageTarget.insertAdjacentHTML("beforeend", html);

    this.meteoTarget.innerHTML = "";
    const actualTemp = meteo.main.temp - 273.15;
    const html2 = `
    <img src="assets/green-city.png"> <p> ${meteo.name} <p>
    <img src="assets/windock.png"> <p> ${meteo.wind.speed} km/h<p>
    <img src="assets/hot.png"> <p> (${actualTemp.toFixed(2)}°C <p>
    `;
    this.meteoTarget.insertAdjacentHTML("beforeend", html2);
  }
}
