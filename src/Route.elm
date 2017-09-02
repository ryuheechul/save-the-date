module Route exposing (locFor, route, Flags)

import Model exposing (..)
import Update exposing (..)
import Navigation exposing (..)
import UrlParser exposing (map, s, oneOf, (</>), int, Parser, parseHash)
import Bootstrap.Navbar as Navbar
import Bootstrap.Carousel as Carousel

type alias Flags =
    { dDay: String
    , untilDDay: Int
    }

route : Parser (Page -> a) a
route =
    oneOf
        [ map Home (s "home")
        , map Login (s "login")
        , map About (s "about")
        , map PostShow (s "post" </> int)
        ]

locFor : Location -> Msg
locFor location =
    parseHash route location
        |> GoTo

