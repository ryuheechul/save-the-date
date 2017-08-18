module Main exposing (..)

import Navigation exposing (Location)
import View exposing (view)
import Model exposing (..)
import Update exposing (..)
import Route exposing (locFor, route)
import Bootstrap.Carousel as Carousel
import UrlParser exposing (parseHash)

main =
    -- Navigation.programWithFlags locFor
    Navigation.program locFor
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Carousel.subscriptions model.carouselState CarouselMsg
    -- Sub.none

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
        defaultStateOptions = Carousel.defaultStateOptions
        carouselState =
            Carousel.initialStateWithOptions
                { defaultStateOptions
                    | interval = Just 2000
                    , pauseOnHover = True
                }
    in
        ( Model page dDay untilDDay carouselState
        , Cmd.none )
