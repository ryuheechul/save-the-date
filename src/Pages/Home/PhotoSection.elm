module Pages.Home.PhotoSection exposing (..)

import Html exposing (..)
import Comps.PhotoBox as PhotoBox

view : List String -> Html msg
view pl =
    div []
        [ div [] [ text "photo section" ]
        , div []
            <| List.map (\photoName -> PhotoBox.view photoName) pl
        ]
