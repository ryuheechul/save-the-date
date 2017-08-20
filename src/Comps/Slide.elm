module Comps.Slide exposing (..)

import Bootstrap.Carousel.Slide as Slide
import Bootstrap.Carousel as Carousel
import Update exposing (Msg(..))
import Html exposing (Html)
import Html.Attributes exposing (style, class)

view : List String -> Carousel.State -> Html Msg
view urls carouselState =
    let
        urlToSlide url =
            Slide.config []
                <| Slide.image [ class "mx-auto" ] url
        slides = List.map urlToSlide urls
        carouselStyle = style [ ("background-color", "black")
                              , ("border-radius", "1.5rem")]
    in
        Carousel.config CarouselMsg [ carouselStyle ]
            |> Carousel.slides slides
            |> Carousel.view carouselState
