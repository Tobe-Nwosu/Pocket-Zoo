import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="friendtabs"
export default class extends Controller {
  static targets = ["friendtabcontent", "friendtablink", "friendslist", "alllocations", "findfriends"]
  connect() {
  }

  changeTab(event) {

    // event.target.classList.toggle("active")
    this.friendtabcontentTargets.forEach(friendtabcontent =>
      friendtabcontent.classList.add("d-none"))
    this.friendtablinkTargets.forEach(friendtablink =>
      friendtablink.classList.remove('active'))
    event.currentTarget.classList.add('active')
    if (event.currentTarget.id === 'friendslist') {
      this.friendslistTarget.classList.remove('d-none')
    } else if (event.currentTarget.id === 'alllocations') {
      this.alllocationsTarget.classList.remove('d-none')
    } else {
      this.findfriendsTarget.classList.remove('d-none')
    }
  }
}
