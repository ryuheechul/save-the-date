module Pages.Menu exposing (view)

import Html.Events exposing (onClick)
import Html exposing (..)
import Update exposing (..)

import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row

view : Html Msg
view =
    Grid.row [ Row.centerXs ]
        [ Grid.col []
              -- [ Col.xs2 ]
              [ myButton (LinkTo "#/home", "Home") ]
        , Grid.col []
              -- [ Col.xs4 ]
              [ myButton (LinkTo "#/login", "Login") ]
        , Grid.col []
              [ myButton (LinkTo "#/about", "About") ]
        , Grid.col []
              [ myButton (LinkTo "#/post/17", "Go to post 17") ]
        ]

myButton : (Msg, String) -> Html Msg
myButton (msg, title) =
    button [ onClick msg ] [ text title ]
