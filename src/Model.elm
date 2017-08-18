module Model exposing (Page(..), Model)

import Bootstrap.Carousel as Carousel

type Page
    = Home
    | Login
    | About
    | PostShow Int


type alias Model =
    { currentPage : Page
    , dDay: String
    , untilDDay: Int
    , carouselState : Carousel.State
    }
