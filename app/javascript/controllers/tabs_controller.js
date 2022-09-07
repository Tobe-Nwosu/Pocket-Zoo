import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tabcontent", "tablink", "findings", "map", "achievements"]
  connect() {
  }

  changeTab(event) {
    // event.target.classList.toggle("active")
    this.tabcontentTargets.forEach(tabcontent =>
      tabcontent.classList.add("d-none"))
    this.tablinkTargets.forEach(tablink =>
      tablink.classList.remove('active'))
    event.target.classList.add('active')
    if (event.target.innerHTML === 'My finds') {
      this.findingsTarget.classList.remove('d-none')
    } else if (event.target.innerHTML === 'Map') {
      this.mapTarget.classList.remove('d-none')
    } else {
      this.achievementsTarget.classList.remove('d-none')
    }
  }
}
