import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="weatherapi"
export default class extends Controller {
  static targets = ["meteo"];
  connect() {
    // console.log("hello from weather controller");
    let city = "lyon";
    this.url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=a160dd207198aea05a45393825008bdf&units=metric`;
    this.fetchMeteo;
  }

  fetchMeteo() {
    fetch(this.url)
      .then((response) => response.json())
      .then(this.displayMeteo.bind(this));
  }

  displayMeteo(meteo) {
    console.log(meteo);
    this.meteoTarget.innerHTML = "";
    const html = `
    <img src="./assets/images/green-city.png"> <p> ${meteo.name} <p>
    <img src="./assets/images/windock.png"> <p> ${meteo.wind.speed} km/h<p>
    <img src="assets/images/hot.png"> <p> ${meteo.main.temp}°C <p>
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
