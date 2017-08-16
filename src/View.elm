module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Model exposing (..)
import Update exposing (..)

import Pages.Home as Home
import Pages.Menu as Menu

import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col

-- VIEW

view : Model -> Html Msg
view model =
    Grid.container [ class "text-center" ]
        [ h1 [] [ text "Save the date!" ]
        , Menu.view
        , render_page model
        ]

render_page : Model -> Html Msg
render_page model =
    let
        page_content =
            case model.currentPage of
                Home ->
                    Home.view model

                Login ->
                    text "Login"

                About ->
                    text "About"

                PostShow postid ->
                    text ("Render the post with id: " ++ toString postid)
    in
        div [] [ page_content ]

