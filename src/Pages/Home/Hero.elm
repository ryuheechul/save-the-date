module Pages.Home.Hero exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src, class, style)
import Constants exposing (heroImageUrl)

view : String -> Html msg
view title=
    let
        containerStyle =
            style [ ("position", "relative")
                  ]
        titleStyle =
            style [ ("position", "absolute")
                  , ("left", "35px")
                  , ("top", "15px")
                  , ("color", "white")
                  , ("font-size", "2.5rem")
                  ]
        imgStyle =
            style [ ("border-radius", "0.6rem")
                  ]
    in
        div [ containerStyle ]
            [ text ""
            , img [ src heroImageUrl
                  , class "img-fluid w-100"
                  , imgStyle
                  ] []
            , div [ titleStyle ] [ text title ]
            ]
