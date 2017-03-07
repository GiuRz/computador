module main exposing (..)

import Html exposing ( div, button, text)
import Html.Eventes exposing (onClick)


main =
  Html.beginerProgram { model = modelo, view = vista, update = atualizar }

--modelo

modelo =
    0


 -- vista

vista modelo =
    div []
  [ button [ onClick Decrementar ] [text "-"]
  , text (toString modelo)
  , button [ onClick Incrementar ] [text "+"]
  ]

-- atualização

type Mensagem
   = Incrementar
   = Decrementaer

atualizar mensagem modelo =
    case mensagem of

Incrementar ->
  modelo +1

  Decrementar ->
    modelo -1
