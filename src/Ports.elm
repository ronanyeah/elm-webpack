port module Ports exposing (..)


type alias Flags =
    {}


port log : String -> Cmd msg
