module View exposing (view)

import Element exposing (centerX, centerY, el, fill, height, text, width)
import Html exposing (Html)
import Types exposing (Model, Msg)


view : Model -> Html Msg
view _ =
    text "App!"
        |> el [ centerX, centerY ]
        |> Element.layoutWith
            { options =
                [ Element.focusStyle
                    { borderColor = Nothing
                    , backgroundColor = Nothing
                    , shadow = Nothing
                    }
                ]
            }
            [ width fill
            , height fill
            ]
