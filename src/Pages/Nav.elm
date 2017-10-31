module Pages.Nav exposing (view, anchor)

import Update exposing (..)
import Model exposing (..)

import Html.Attributes exposing (href, class, style, id)
import Html exposing (..)
import Translations exposing ( translate, Keyword(..) )

view : Model -> Html Msg
view model =
    let t = translate model.translations
    in
        ul [ classNavBar, navStyle ]
            [ li [ classNavItem ]
                  [ a [ classLink, href "#photo" ] [ text <| t Photo ] ]
            , li [ classNavItem ]
                [ a [ classLink, href "#date" ] [ text <| t Date ] ]
            , li [ classNavItem ]
                [ a [ classLink, href "#map" ] [ text <| t Map ] ]
            , li [ classNavItem ]
                [ a [ classLink, href "#top" ] [ text <| t Top ] ]
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
