module Pages.Home.Map exposing (view)

import Html exposing (div, ul, li, iframe, text, a, Html)
import Html.Attributes exposing (class, style, src, height, href, target)
import Constants exposing (mapUrl, address)

view =
    div [] <|
        [ iframe iframeAttrs []
        , addressView
        ] ++ [ recommended ]

iframeAttrs =
    [ src mapUrl
    -- , width 600
    , height 450
    , style iframeStyle
    ]

iframeStyle =
    [ ("border", "0")
    , ("width", "100%")
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
