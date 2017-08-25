module Main exposing (..)

import Html
import Html.Attributes


main =
    Html.div []
        [ Html.h1 [] [ Html.text "Tada List" ]
        , Html.section []
            [ Html.input [ Html.Attributes.id "newTask" ] []
            , Html.button [] [ Html.text "Add" ]
            ]
        , Html.section []
            [ Html.ul []
                [ Html.li []
                    [ Html.label []
                        [ Html.input [ Html.Attributes.type_ "checkbox" ] []
                        , Html.text "Buy some milk"
                        ]
                    ]
                , Html.li []
                    [ Html.label []
                        [ Html.input [ Html.Attributes.type_ "checkbox" ] []
                        , Html.text "Buy some coffee"
                        ]
                    ]
                ]
            ]
        ]
