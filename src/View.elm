module View exposing (view)

import Element exposing (centerX, centerY, el, fill, height, text, width)
import Html exposing (Html)
import Types exposing (Model, Msg)


view : Model -> Html Msg
view _ =
    text "App!"
        |> el [ centerX, centerY ]
        |> Element.layout
            [ width fill
            , height fill
            ]
