module Pages.Home.Map exposing (view)

import Html exposing (div, ul, li, iframe, text, a, Html)
import Html.Attributes exposing (class, style, src, height, href, target, id)
import Constants exposing (mapUrl, address)

view =
    div [] <|
        [ iframe iframeAttrs []
        , addressView
        ] ++ [ recommended ]

iframeAttrs =
    [ id "map-iframe"
    , src mapUrl
    , class "w-100"
    , style iframeStyle
    ]

iframeStyle =
    [ ("border", "0")
    ]

addressView  =
    div [ class "text-muted" ] [ text address ]

recommended =
    ul [ class "text-left" ]
    [ li [] [ text "shuttle bus from yaksoo station"]
    , li [] [ text "bus from hanganjin station: "
            , simpleLink "http://naver.me/FWHEVQ82"
            ]
    ]

simpleLink : String -> Html msg
simpleLink url =
    a [ href url
      , target "_blank"
      ] [ text url ]
