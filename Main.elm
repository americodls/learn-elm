module Main exposing (..)

import Html exposing (button, div, h1, input, label, li, section, text, ul)
import Html.Attributes exposing (id, type_)


main =
    Html.beginnerProgram { model = model, update = update, view = view }


model =
    { newTask = "", taskList = [] }


update msg model =
    { newTask = "", taskList = [] }


view model =
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
