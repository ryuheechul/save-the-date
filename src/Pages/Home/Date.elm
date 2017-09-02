module Pages.Home.Date exposing (view)

import Html exposing ( Html, div, text )
import Html.Attributes exposing ( id )

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
            , div [ id "until-d-day" ] []
            ]
