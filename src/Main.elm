module Main exposing (..)

import Navigation exposing (Location)
import View exposing (view)
import Model exposing (..)
import Update exposing (..)
import Route exposing (locFor, route, Flags)
import Bootstrap.Carousel as Carousel
import UrlParser exposing (parseHash)
import I18Next exposing (decodeTranslations, initialTranslations)
import Json.Decode

main =
    Navigation.programWithFlags locFor
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Carousel.subscriptions model.carouselState CarouselMsg

init : Flags -> Location -> ( Model, Cmd Msg )
init {dDay, untilDDay, translations} location =
    let
        page =
            case parseHash route location of
                Nothing ->
                    Home

                Just page ->
                    page
        defaultStateOptions = Carousel.defaultStateOptions
        carouselState =
            Carousel.initialStateWithOptions
                { defaultStateOptions
                    | interval = Just 2000
                    , pauseOnHover = True
                }
    in
        let
            translationsResult = Json.Decode.decodeValue decodeTranslations translations
        in
            let
                tData =
                    case translationsResult of
                        Ok translations -> translations
                        Err err -> initialTranslations
            in
                ( Model page dDay untilDDay carouselState tData
                , Cmd.none )
