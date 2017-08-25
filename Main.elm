module Main exposing (..)

import Html exposing (button, div, h1, input, label, li, section, text, ul)
import Html.Attributes exposing (id, type_)


main =
    div []
        [ h1 [] [ text "Tada List" ]
        , section []
            [ input [ id "newTask" ] []
            , button [] [ text "Add" ]
            ]
        , section []
            [ ul []
                [ li []
                    [ label []
                        [ input [ type_ "checkbox" ] []
                        , text "Buy some milk"
                        ]
                    ]
                , li []
                    [ label []
                        [ input [ type_ "checkbox" ] []
                        , text "Buy some coffee"
                        ]
                    ]
                ]
            ]
        ]
