module Pages.Home exposing (view)

import Html exposing (..)

import Pages.Home.Hero as Hero
import Pages.Home.PhotoSection as PhotoSection
import Pages.Home.Date as Date
import Pages.Home.Map as Map
import Pages.Home.Footer as Footer
import Pages.Nav exposing (anchor)

view {dDay, untilDDay} =
    div []
        [ hr [] []
        , anchor "top"
        , Hero.view "I'm a hero!"
        , hr [] []
        , anchor "photo"
        , PhotoSection.view ["1", "2"]
        , hr [] []
        , anchor "date"
        , Date.view (dDay, untilDDay)
        , hr [] []
        , anchor "map"
        , Map.view
        , hr [] []
        , Footer.view
        ]
