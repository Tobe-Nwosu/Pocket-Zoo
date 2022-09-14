import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput", "findfriendstabcontent", "findfriendstablink", "friendslist", "alllocations", "findfriends" ]

  connect() {
  }

  update(event) {
    event.preventDefault()

    this.findfriendstabcontentTargets.forEach(findfriendstabcontent =>
      findfriendstabcontent.classList.add("d-none"))
    this.findfriendstablinkTargets.forEach(findfriendstablink =>
      findfriendstablink.classList.remove('active'))
    event.currentTarget.classList.add('active')
    console.log(event.currentTarget)
    this.findfriendsTarget.classList.remove('d-none')
    console.log(this.findfriendsTarget)

    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}&find_friends=true`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
        this.findfriendstabcontentTarget.click()
        console.log(data)
      })


  }
}
