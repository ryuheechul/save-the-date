module Pages.Home.PhotoSection exposing (..)

import Html exposing (a, div, text)
import Html.Attributes exposing (alt, href, target, style, class)
import Comps.PhotoBox as PhotoBox
import Comps.Slide as Slide
import Constants exposing (heroImageUrl, slideImageUrls, albumUrl)

view carouselState =
    let
        containerStyle = style [ ("position", "relative") ]
        titleStyle = style [ ("position", "absolute")
                           , ("bottom", "20px")
                           , ("width", "100%")
                           , ("font-size", "2rem")
                           , ("color", "white")
                           ]
        slideView = Slide.view slideImageUrls carouselState
        title = div [ titleStyle
                    , class "mx-auto text-center fade-in-on-hover"
                    ] [ text "Click to see more" ]
    in
        a [ href albumUrl, target "_blank" ]
            <| [ div [ containerStyle ]
                     <| [ slideView
                        , title
                        ]
               ]
