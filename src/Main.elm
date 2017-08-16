module Main exposing (..)

import Navigation
import View exposing (view)
import Model exposing (..)
import Update exposing (..)
import Route exposing (init, locFor)

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
    Sub.none
