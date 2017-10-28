module Pages.Home.MessageSection exposing (view)

import Html exposing (div, text, h1, h5, small, Html)
import Html.Attributes exposing (class)
import Translations exposing ( translate, Keyword(..) )
import Model exposing (..)

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

view : Model -> Html msg
view model =
    let
        t = translate model.translations
        title =
            h1 []
                [ text <| t Lily
                , small [ class "text-muted" ] [ text " ❤️ " ]
                , text <| t Heechul
                ]
    in
        div [ class "my-5" ]
            [ titleView title
            -- , h5 [ class "text-muted mt-4 font-bungee" ] [ text "RSVP, Please!" ]
            ]

