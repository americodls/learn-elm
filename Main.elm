module Main exposing (..)

import Html exposing (button, div, h1, input, label, li, section, text, ul)
import Html.Attributes exposing (id, type_, value)
import Html.Events exposing (onInput, onClick)


main =
    Html.beginnerProgram { model = model, update = update, view = view }


model =
    { newTask = "", taskList = [ "Buy some milk", "Buy some coffee" ] }


view model =
    div []
        [ h1 [] [ text "Tada List" ]
        , section []
            [ input [ id "newTask", onInput UpdateNewTask, value model.newTask ] []
            , button [ onClick UpdateTaskList ] [ text "Add" ]
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


update action model =
    case action of
        UpdateNewTask newTask ->
            { model | newTask = newTask }

        UpdateTaskList ->
            { taskList = (model.newTask :: model.taskList), newTask = "" }


type Action newTask
    = UpdateNewTask newTask
    | UpdateTaskList
