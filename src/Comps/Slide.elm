module Comps.Slide exposing (..)

import Bootstrap.Carousel.Slide as Slide
import Bootstrap.Carousel as Carousel
import Update exposing (Msg(..))
import Html exposing (Html, h3, text, a, img)
import Html.Attributes exposing (style, class, href, src, target)

view : List String -> String -> Carousel.State -> Html Msg
view urls albumUrl carouselState =
    let
        urlToSlide url =
            Slide.config [] (image url albumUrl)
                |> caption "Click to see more"
        slides = List.map urlToSlide urls
        carouselStyle = style [ ("background-color", "black")
                              ]
    in
        Carousel.config CarouselMsg [ carouselStyle ]
            |> Carousel.withIndicators
            |> Carousel.withControls
            |> Carousel.slides slides
            |> Carousel.view carouselState

caption title =
    let
        captionStyle =
            style [ ("color", "white")
                  , ("-webkit-text-fill-color", "black")
                  , ("-webkit-text-stroke-width", "0.5px")
                  , ("-webkit-text-stroke-color", "white")
                  ]
    in
        Slide.caption [ class "fade-in-on-hover" ] [ h3 [ captionStyle ] [ text title ] ]

image : String -> String -> Slide.SlideContent msg
image url link =
    -- Slide.image [ class "mx-auto" ] url
    Slide.customContent
        <| a [ href link
             , class "w-100 d-block h-100"
             , target "_blank"
             ] [ img [ class "mx-auto d-block img-fluid h-100"
                     , style [("max-height", "500px")]
                     , src url ] []
               ]
