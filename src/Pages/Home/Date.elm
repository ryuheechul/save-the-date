module Pages.Home.Date exposing (view)

import Html exposing (..)

view : (String, Int) -> Html msg
view (dDay, untilDDay) =
    let
        untilDDayString = toString untilDDay
    in
        div []
            [ text <| "D-Day is " ++ dDay ++ "."
            , div [] [ text <| untilDDayString ++ " days away." ]
            ]
