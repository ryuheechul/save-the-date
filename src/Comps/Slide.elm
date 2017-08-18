module Comps.Slide exposing (..)

import Bootstrap.Carousel.Slide as Slide
import Bootstrap.Carousel as Carousel
import Update exposing (Msg(..))
import Html exposing (Html)

view : List String -> Carousel.State -> Html Msg
view urls carouselState =
    let
        urlToSlide url =
            Slide.config []
                <| Slide.image [] url
        slides = List.map urlToSlide urls
    in
        Carousel.config CarouselMsg []
            |> Carousel.slides slides
            |> Carousel.view carouselState
