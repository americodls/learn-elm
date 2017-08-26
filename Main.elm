module Main exposing (..)

import Html exposing (button, div, h1, input, label, li, section, text, ul)
import Html.Attributes exposing (id, type_, value)
import Html.Events exposing (onInput, onClick)


main =
    Html.beginnerProgram { view = view, model = model, update = update }



-- VIEW


view model =
    div []
        [ h1 [] [ text "Tada List" ]
        , section []
            [ input [ onInput UpdateNewTask, value model.newTask ] []
            , button [ onClick UpdateTaskList ] [ text "Add" ]
            ]
        , section []
            [ ul [] (List.map toListItemView model.taskList)
            ]
        ]


toListItemView item =
    li []
        [ label []
            [ input [ type_ "checkbox" ] []
            , text item
            ]
        ]



-- MODEL


type alias Model =
    { newTask : String
    , taskList : List String
    }


model =
    Model "" []



-- UPDATE


update action model =
    case action of
        UpdateNewTask newTask ->
            { model | newTask = newTask }

        UpdateTaskList ->
            Model "" (model.newTask :: model.taskList)


type Action newTask
    = UpdateNewTask newTask
    | UpdateTaskList
