module Main exposing (main)

import Browser
import Ports
import Types exposing (Model, Msg)
import Update exposing (update)
import View exposing (view)


main : Program Ports.Flags Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Ports.Flags -> ( Model, Cmd Msg )
init _ =
    ( {}, Ports.log "app start" )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
