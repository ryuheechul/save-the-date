module Pages.Home.Hero exposing (..)

import Html exposing (..)

view : String -> Html msg
view title=
    div [] [ text title ]
