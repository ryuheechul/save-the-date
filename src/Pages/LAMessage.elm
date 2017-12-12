module Pages.LAMessage exposing (view)

import Html exposing (Html, text, node, div, a)
import Html.Attributes exposing (id, type_, href, class)
import Update exposing (..)

script = node "script"
noscript = node "noscript"

view : Html Msg
view =
    div [ class "container px-md-5" ]
        [ div [ id "disqus_thread", class "px-lg-5" ] []
        , script [ type_ "text/javascript" ]
            [ text scriptText ]
        , noscript [] noscriptContents
        ]

scriptText = """
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://save-the-date.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
"""
noscriptContents =
    [ text "Please enable JavaScript to view the "
    , a [href "https://disqus.com/?ref_noscript"] [ text "comments powered by Disqus." ]
    ]
