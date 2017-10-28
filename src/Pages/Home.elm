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
import Translations exposing ( translate, Keyword(..) )

view : Model -> Html Msg
view model =
    let
        { dDay, untilDDay, carouselState } = model
        t = translate model.translations
    in
        div []
            [ hr [] []
            , anchor "top"
            , Hero.view <| t SaveTheDate
            , hr [] []
            , anchor "message"
            , MessageSection.view model
            , hr [] []
            , anchor "photo"
            , PhotoSection.view carouselState
            , hr [] []
            , anchor "date"
            , Date.view model (dDay, untilDDay)
            , hr [] []
            , anchor "map"
            , Map.view model
            , hr [] []
            , Footer.view
            ]
