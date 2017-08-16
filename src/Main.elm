module Main exposing (..)

import Html exposing (Html, text, div, img)
import Html.Attributes exposing (src)

import Bootstrap.Grid as Grid
-- import Bootstrap exposing (Grid)
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col
-- import Bootstrap.Grid exposing (Row, Col)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----

myViewFn =
    -- Grid.row [ Row.centerXs ]
    Grid.row [ Row.centerXs ]
        [ Grid.col [ Col.xs2 ]
            [ text "Col 1" ]
        , Grid.col [ Col.xs4 ]
            [ text "Col 2" ]
        ]

view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , div [] [ text "Your Elm App is working!" ]
        , div [] [ text "I'm div!" ]
        , div [] [ text "gallery" ]
        , div [] [ text "map" ]
        , div [] [ text "comments" ]
        , div [] [ text "??" ]
        , myViewFn
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
