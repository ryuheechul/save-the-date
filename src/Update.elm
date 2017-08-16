module Update exposing (..)

import Model exposing (..)
import Navigation exposing (newUrl)
-- UPDATE


type Msg
    = GoTo (Maybe Page)
    | LinkTo String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GoTo maybepage ->
            case maybepage of
                Nothing ->
                    ( { model | currentPage = Home }, Cmd.none )

                Just page ->
                    ( { model | currentPage = page }, Cmd.none )

        LinkTo path ->
            ( model, newUrl path )
