module Pages.Home.Map exposing (view)

import Html exposing (div, ul, li, iframe, text, a, pre, b, Html)
import Html.Attributes exposing (class, style, src, height, href, target, id)
import Constants exposing (mapUrl)
import Translations exposing (translate, Keyword(..))
import Model exposing (Model)
import Update exposing (Msg)

view : Model -> Html Msg
view model =
    let t = translate model.translations
    in
        div [] <|
            [ iframe iframeAttrs []
            , addressView t
            ] ++ [ recommended t ]

iframeAttrs =
    [ id "map-iframe"
    , src mapUrl
    , class "w-100"
    , style iframeStyle
    ]

iframeStyle =
    [ ("border", "0")
    ]

addressView t =
    div [ class "text-muted" ]
        [ div [] [ text <| t WeddAddr ]
        , div [] [ text <| "(" ++ t WeddAddrSub ++ ")"]
        ]

recommended t =
    ul [ class "text-left" ]
    [ li [] [ b [] [ text "Shuttle bus" ]
            , pre [] [ text <| t Shuttle ] ]
    , li [] [ b [] [ text "Subway" ]
            , pre [] [ text <| t Subway ] ]
    , li [] [ b [] [ text "Bus" ]
            , div [] [ simpleLink "http://naver.me/FWHEVQ82" ]
            , pre [] [ text <| t Bus ]
            ]
    , li [] [ b [] [ text "Parking / Taxi" ]
            , pre [] [ text <| t Parking ] ]
    ]

simpleLink : String -> Html msg
simpleLink url =
    a [ href url
      , target "_blank"
      ] [ text url ]
