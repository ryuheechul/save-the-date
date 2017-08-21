module Pages.Home.Footer exposing (view)

import Html exposing ( text, br, div )
import Html.Attributes exposing ( class )

view =
    div [ class "my-5" ]
    [ text "you can comment below"
    , br [] []
    , text "it's a footer"
    ]
