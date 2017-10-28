module Pages.Home.Map exposing (view)

import Html exposing (div, ul, li, iframe, text, a, Html)
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
    div [ class "text-muted" ] [ text <| t WeddAddr ]

recommended t =
    ul [ class "text-left" ]
    [ li [] [ text <| t FromYaksu ]
    , li [] [ text <| t FromHanganjin
            , simpleLink "http://naver.me/FWHEVQ82"
            ]
    ]

simpleLink : String -> Html msg
simpleLink url =
    a [ href url
      , target "_blank"
      ] [ text url ]
