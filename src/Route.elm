module Route exposing (locFor, init)

import Model exposing (..)
import Update exposing (..)
import Navigation exposing (..)
import UrlParser exposing (map, s, oneOf, (</>), int, Parser, parseHash)
import Bootstrap.Navbar as Navbar

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

init : Location -> ( Model, Cmd Msg )
-- init : Flags -> Location -> ( Model, Cmd Msg )
-- init flags location =
init location =
    let
        page =
            case parseHash route location of
                Nothing ->
                    Home

                Just page ->
                    page
        dDay = "2018/04/28"
        untilDDay = 250
    in
        ( Model page dDay untilDDay, Cmd.none )

