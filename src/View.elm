module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Model exposing (..)
import Update exposing (..)

import Pages.Home as Home
import Pages.Menu as Menu
import Pages.Nav as Nav

import Bootstrap.Grid as Grid
import Translations exposing ( translate, Keyword(..) )
import I18Next

titleView : I18Next.Translations -> Html Msg
titleView translations =
    let
        t = translate translations
        l =
            [ " font-dafoe"
            -- , " font-knewave"
            -- , " font-bungee"
            -- , " font-alfa"
            -- , " font-skranji"
            -- , " font-faster"
            -- , " font-shade"
            -- , " font-diplomata"
            ]
        fn fc =
            h1 [ class ("my-5" ++ fc) ] [ text (t TopTitle) ]
        hs =
            List.map fn l
    in
        div [] hs

view : Model -> Html Msg
view model =
    Grid.container [ class "text-center" ]
        [ titleView model.translations
        -- , Menu.view
        , Nav.view model
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

