module Pages.Home.PhotoSection exposing (..)

import Html exposing (..)
import Html.Attributes exposing (alt, style)
import Comps.PhotoBox as PhotoBox
import Comps.Slide as Slide
import Constants exposing (heroImageUrl, slideImageUrls)

view carouselState =
    Slide.view slideImageUrls carouselState
