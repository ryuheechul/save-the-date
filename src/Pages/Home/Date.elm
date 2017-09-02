module Pages.Home.Date exposing (view)

import Html exposing ( Html, div, text, a )
import Html.Attributes exposing ( href )

view : (String, Int) -> Html msg
view (dDay, untilDDay) =
    let
        untilDDayString = toString untilDDay
        awayText =
            case untilDDay of
                1 -> " day away from today."
                _ -> " days away from today."
    in
        div []
            [ text <| "D-Day is " ++ dDay ++ "."
            , div [] [ text <| untilDDayString ++ awayText ]
            , a [ href "LK&HR-Wed.ics" ] [ text "Add to your calendar"]
            ]
