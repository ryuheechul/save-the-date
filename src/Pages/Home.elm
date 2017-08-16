module Pages.Home exposing (view)

import Html exposing (..)
import Pages.Home.Hero as Hero
import Pages.Home.PhotoSection as PhotoSection
import Pages.Home.Date as Date
import Pages.Home.Map as Map
import Pages.Home.Footer as Footer

view {dDay, untilDDay} =
    div []
        [ hr [] []
        , Hero.view "I'm a hero!"
        , hr [] []
        , PhotoSection.view ["1", "2"]
        , hr [] []
        , Date.view (dDay, untilDDay)
        , hr [] []
        , Map.view
        , hr [] []
        , Footer.view
        ]
