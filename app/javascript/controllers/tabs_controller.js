import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tabcontent", "tablink", "findings", "locations", "achievements"]
  connect() {
  }

  changeTab(event) {

    // event.target.classList.toggle("active")
    console.log(event.currentTarget.id)
    this.tabcontentTargets.forEach(tabcontent =>
      tabcontent.classList.add("d-none"))
    this.tablinkTargets.forEach(tablink =>
      tablink.classList.remove('active'))
    event.currentTarget.classList.add('active')
    if (event.currentTarget.id === 'findings') {
      console.log(this.findingsTarget)
      this.findingsTarget.classList.remove('d-none')
    } else if (event.currentTarget.id === 'locations') {
      this.locationsTarget.classList.remove('d-none')
      console.log(this.locationsTarget)
    } else {
      this.achievementsTarget.classList.remove('d-none')
      console.log(this.achievementsTarget)
    }
  }
}
