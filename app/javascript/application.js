// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { navbar } from "./components/navbar"
// import { swiperCard } from "./components/swiper_card"

navbar();
