module Pages.Home.Hero exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src)

view : String -> Html msg
view title=
    div []
        -- [ text title
        [ text ""
        , img [ src "https://lh3.googleusercontent.com/fj_NNXjHnORLtK8bcBaM2X3IfR0KFWtcY526V6M2-DAho8pPpcpVE29VKPk7jk_CrCIOAQlztu8OxZXmUvFDEZaEP_i1Sp_zysboAmSwmGhNMF__uJmos3I9S38OT3Wh8BUXozyRbJEDn2qeozfuiNR_4QTe3atKuEbp7PpPP7PWPYc81BS9C0PyQabHq9hm3GXpDUZ6PUa102E6FbBRtaFb5Rcbk0ldDAMqaDKM6n0sHGTj2po5S5bmNLbaI97Lz4Y3hkcL46bzEcHs9HbXtPw5AlYLYfGjchoCSSfBkugmnstNJK7I_H1-WDmvlqD7vSS0wuzmjjdSIFqknzMYHU49CClqkPyzPdXG7iAhteWOZA3q8SCAp02Mn2PCyVc9MCt6nWgHYv1QtdK3vlUfHJQAswiTqPbbJql3zo5Do0e_QpEm397qyVhQH-vE0_NF5dZg6wP7u3tzoEIOo9BZ2-V-YGGh78B_kh76-L-iThtGmpYDAONN_Y0nSyc2lbFpk-r1i8cq2SmLumYWIoZyrG774hr0UviuVprTqjrBzA_rdhS70vwaMPY-4kTSUD6qT4tpIbJ0XKbNgS2uT-im91G8E8yqAUGag32evAfy9_eBuikUOkdsnSdMh6TiGuPqJ7FyHN86GYCmCk46dl7gDAQkldiTfGIBBYSpnOiP3w6KVn8=w1077-h808-no"] []
        ]
