import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["findings", "map"]
  connect() {
  }

  changeTab(event) {
    if (event.target.innerHTML === 'My finds') {
      event.target.classList.toggle("active")

      console.log(event.target.innerHTML)
      // this.findingsTarget.classList.remove("d-none")
    } else if (event.target.innerHTML === 'Map') {
      event.target.classList.toggle("active")
      console.log(event.target.innerHTML)
      // this.mapTarget.classList.remove("d-none")
    } else if (event.target.innerHTML === 'Achievements') {
      event.target.classList.toggle("active")
      console.log(event.target.innerHTML)
    }
  }
}
