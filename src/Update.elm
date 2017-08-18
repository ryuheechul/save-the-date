module Update exposing (..)

import Model exposing (..)
import Navigation exposing (newUrl)
import Bootstrap.Carousel as Carousel

type Msg
    = GoTo (Maybe Page)
    | LinkTo String
    | CarouselMsg Carousel.Msg


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
        CarouselMsg subMsg ->
            ( { model | carouselState = Carousel.update subMsg model.carouselState }
            , Cmd.none )
