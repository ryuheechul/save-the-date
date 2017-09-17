module Pages.Nav exposing (view, anchor)

import Update exposing (..)
import Model exposing (..)

import Html.Attributes exposing (href, class, style, id)
import Html exposing (..)

view : Model -> Html Msg
view model =
    ul [ classNavBar, navStyle ]
        [ li [ classNavItem ]
              [ a [ classLink, href "#photo" ] [ text "Photo" ] ]
        , li [ classNavItem ]
              [ a [ classLink, href "#date" ] [ text "Date" ] ]
        , li [ classNavItem ]
              [ a [ classLink, href "#map" ] [ text "Map" ] ]
        , li [ classNavItem ]
              [ a [ classLink, href "#top" ] [ text "Top" ] ]
        ]

navStyle =
    style [ ("background-color", "white")
          ]

classLinkActive =
    class "nav-link active"

classLink =
    class "nav-link text-info"

classNavBar =
    class "nav nav-pills nav-fill sticky-top"

classNavItem =
    class "nav-item"

-- https://pixelflips.com/blog/anchor-links-with-a-fixed-header
anchor idText =
    span [ anchorStyle, id idText ] []

anchorStyle =
    style [ ("display", "block")
          , ("height", "50px")
          , ("margin-top", "-50px")
          , ("visibility", "hidden")
          ]
