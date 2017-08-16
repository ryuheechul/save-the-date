module Model exposing (Page(..), Model)

type Page
    = Home
    | Login
    | About
    | PostShow Int


type alias Model =
    { currentPage : Page
    , dDay: String
    , untilDDay: Int
    }
