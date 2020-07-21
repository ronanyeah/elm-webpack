module Main exposing (main)

import Browser
import Element exposing (centerX, centerY, el, fill, height, none, text, width)
import Html exposing (Html)


type alias Model =
    {}


type Msg
    = Msg


main : Program () Model Msg
main =
    Browser.element
        { init =
            always
                ( {}
                , Cmd.none
                )
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }


view : Model -> Html Msg
view _ =
    text "App!"
        |> el [ centerX, centerY ]
        |> Element.layout
            [ width fill
            , height fill
            ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg ->
            ( model, Cmd.none )
