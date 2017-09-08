module Pages.Home.MessageSection exposing (view)

import Html exposing (div, text, h1, h4, small)
import Html.Attributes exposing (class)

view =
    let
        title =
            h1 []
                [ text "Lily"
                , small [ class "text-muted" ] [ text " X " ]
                , text "Heechul"
                ]
    in
        div [ class "my-5" ]
            [ title
            , h4 [ class "text-muted mt-4" ] [ text "Please RSVP!" ]
            ]

