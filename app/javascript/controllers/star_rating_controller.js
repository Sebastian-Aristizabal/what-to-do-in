import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="star-rating"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    new StarRating(this.element)
  }
}
