module Pages.Home.Hero exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src, class)
import Constants exposing (heroImageUrl)

view : String -> Html msg
view title=
    div []
        -- [ text title
        [ text ""
        , img [ src heroImageUrl
              , class "img-fluid"
              ] []
        ]
