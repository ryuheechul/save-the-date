module Pages.Home.Hero exposing (view)

import Html exposing (..)
import Html.Attributes exposing (src, class, style)
import Constants exposing (heroImageUrl)

view : String -> Html msg
view title=
    let
        containerStyle =
            style [ ("position", "relative")
                  ]
        titleStyleCss =
            [ ("position", "absolute")
            , ("left", "35px")
            , ("top", "15px")
            , ("color", "white")
            , ("font-size", "2.5rem")
            ]

        titleStyle =
            style titleStyleCss

        mobileTitleStyle =
            style <| titleStyleCss ++
                [ ("top", "auto")
                , ("bottom", "15px")
                ]

        imgStyle =
            style [ ("border-radius", "0.6rem")
                  ]
    in
        div [ containerStyle ]
            [ text ""
            , img [ src heroImageUrl
                  , class "img-fluid w-100"
                  , imgStyle
                  ] []
            , div [ titleStyle, class "hidden-sm-down" ] [ text title ]
            , div [ mobileTitleStyle, class "hidden-md-up" ] [ text title ]
            ]
