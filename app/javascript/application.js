// Entry point for the build script in your package.json
// import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
// import Rails from "@rails/ujs";
// import Turbolinks from "turbolinks";
// import * as ActiveStorage from "@rails/activestorage";

// Rails.start();
// Turbolinks.start();
// ActiveStorage.start();
// import { swiperCard } from "./components/swiper_card"

import { navbar } from "./components/navbar"
import { donut } from "./components/chart"
import { bars } from "./components/chart2"
import { swiper_card } from "./components/swiper_card";
// turbolinks:load
document.addEventListener("DOMContentLoaded", function () {
  swiper_card();
  navbar();
  donut();
  bars()
});
