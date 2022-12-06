// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { navbar } from "./components/navbar"

// import { swiperCard } from "./components/swiper_card"

import { donut } from "./components/chart"
import { bars } from "./components/chart2"

navbar();
donut();
bars()
