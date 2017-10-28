module Pages.Home.Date exposing (view)

import Html exposing ( Html, div, text, a )
import Html.Attributes exposing ( href )
import Translations exposing ( translate, translateWV, Keyword(..) )
import Model exposing (..)

view : Model -> (String, Int) -> Html msg
view model (dDay, untilDDay) =
    let
        t = translate model.translations
        tr = translateWV model.translations
        untilDDayString = toString untilDDay
        awayKeyword =
            case untilDDay of
                1 -> HowFar
                _ -> HowFars
    in
        div []
            [ text <| tr TellDDay [("dDay", dDay)]
            , div [] [ text <| tr awayKeyword [("daysLeft", untilDDayString)]]
            , a [ href "LK&HR-Wed.ics" ] [ text <| t AddToCal]
            ]
