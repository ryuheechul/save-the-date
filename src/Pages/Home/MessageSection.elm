module Pages.Home.MessageSection exposing (view)

import Html exposing (div, text, h1, h5, small, Html)
import Html.Attributes exposing (class)

-- rsvpFontClass =

titleView : Html msg -> Html msg
titleView title =
    let
        l =
            -- [ " font-dafoe"
            -- , " font-knewave"
            -- , " font-bungee"
            -- , " font-alfa"
            -- , " font-skranji"
            -- , " font-faster"
            [ " font-shade"
            -- , " font-diplomata"
            ]
        fn fc =
            div [ class fc] [ title ]
        hs =
            List.map fn l
    in
        div [] hs

view: Html msg
view =
    let
        title =
            h1 []
                [ text "Lily"
                , small [ class "text-muted" ] [ text " ❤️ " ]
                , text "Heechul"
                ]
    in
        div [ class "my-5" ]
            [ titleView title
            , h5 [ class "text-muted mt-4 font-bungee" ] [ text "RSVP, Please!" ]
            ]

