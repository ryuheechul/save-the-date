module Pages.Home.Footer exposing (view)

import Html exposing ( text, br, div, button, a, h6 )
import Html.Attributes exposing ( class, href )
import Pages.LAMessage as LAMessage

view =
    div [ class "my-5" ]
    [ h6 [] [text "Leave a message below!"]
    , div [ class "my-5" ] []
    , LAMessage.view
    ]

