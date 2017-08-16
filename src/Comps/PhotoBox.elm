module Comps.PhotoBox exposing (..)

import Html exposing (..)

view : String -> Html msg
view photoName =
    button [] [ text <| "photobox" ++ photoName ]

