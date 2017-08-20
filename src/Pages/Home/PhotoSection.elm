module Pages.Home.PhotoSection exposing (..)

import Html exposing (a, div, text)
import Html.Attributes exposing (alt, href, target, style, class)
import Comps.PhotoBox as PhotoBox
import Comps.Slide as Slide
import Constants exposing (heroImageUrl, slideImageUrls, albumUrl)

view carouselState =
    let
        containerStyle = style [ ("position", "relative") ]
        slideView = Slide.view slideImageUrls albumUrl carouselState
    in
        div [ containerStyle ] [ slideView ]
