module Main exposing (..)

import Html exposing (button, div, h1, input, label, li, section, text, ul)
import Html.Attributes exposing (id, type_)


main =
    Html.beginnerProgram { model = model, update = update, view = view }


model =
    { newTask = "", taskList = [ "Buy some milk", "Buy some coffee" ] }


update msg model =
    { newTask = "", taskList = [ "Buy some milk", "Buy some coffee" ] }


view model =
    div []
        [ h1 [] [ text "Tada List" ]
        , section []
            [ input [ id "newTask" ] [ text model.newTask ]
            , button [] [ text "Add" ]
            ]
        , section []
            [ ul [] (displayList model.taskList)
            ]
        ]


displayList list =
    List.map displayItem list


displayItem item =
    li []
        [ label []
            [ input [ type_ "checkbox" ] []
            , text item
            ]
        ]
