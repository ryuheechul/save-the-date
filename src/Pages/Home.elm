module Pages.Home exposing (view)

import Html exposing (..)

import Pages.Home.Hero as Hero
import Pages.Home.PhotoSection as PhotoSection
import Pages.Home.Date as Date
import Pages.Home.Map as Map
import Pages.Home.Footer as Footer
import Pages.Home.MessageSection as MessageSection
import Pages.Nav exposing (anchor)
import Model exposing (Model)
import Update exposing (Msg)

view : Model -> Html Msg
view model =
    let
        { dDay, untilDDay, carouselState } = model
    in
        div []
            [ hr [] []
            , anchor "top"
            , Hero.view "Save the date!"
            , hr [] []
            , anchor "message"
            , MessageSection.view
            , hr [] []
            , anchor "photo"
            , PhotoSection.view carouselState
            , hr [] []
            , anchor "date"
            , Date.view (dDay, untilDDay)
            , hr [] []
            , anchor "map"
            , Map.view
            , hr [] []
            , Footer.view
            ]
