module Pages.Home.PhotoSection exposing (..)

import Html exposing (a)
import Html.Attributes exposing (alt, href, target)
import Comps.PhotoBox as PhotoBox
import Comps.Slide as Slide
import Constants exposing (heroImageUrl, slideImageUrls, albumUrl)

view carouselState =
    a [ href albumUrl, target "_blank" ] [ Slide.view slideImageUrls carouselState ]
