import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("the navbar controller is connected")
  }

  updateNavbar() {
    const scrollLimit = 150;
    if (window.scrollY >= scrollLimit) {
      this.element.classList.add("disappear-title")
    } else {
      this.element.classList.remove("disappear-title")
    }
  }
}
