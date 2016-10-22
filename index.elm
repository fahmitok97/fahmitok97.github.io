import Html exposing (Html, div, text, a, p, br, article, strong, small)
import Html.Attributes exposing (class, href)
import Html.App as App
import Html.Events exposing (onClick)
import CDN exposing (bulma)

main = 
    App.beginnerProgram { model = model, view = view,  update = update }

-- MODEL

type alias Model = Int

model : Model
model = 
    0


-- UPDATE

type Msg = Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    
   Reset ->
        model

-- VIEW

view : Model -> Html Msg
view model =
  div [] [ bulma.css,
    div [class "columns"] [
      div [class "column is-half is-offset-one-quarter"] [
        div [class "box"] [ 
            article [class "media"] [
              div [class "media-content"] [
                div [class "content"] [
                  p [] [
                    strong [] [text "Fahmi"],
                    small [] [text "@fahmitok97"]
                  ],
                  br [] [],
                  p [] [
                    a [href "https://projecteuler.net/profile/fahmitok.png"] [text "click to go to my projecteuler account"]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]
    ]