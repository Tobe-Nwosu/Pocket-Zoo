import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  connect() {
    console.log(this.element);
    console.log('hello')
    console.log(this.formTarget.action);
    console.log(this.listTarget);
    console.log(this.searchInputTarget);
  }

  update(event) {
    event.preventDefault()
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
