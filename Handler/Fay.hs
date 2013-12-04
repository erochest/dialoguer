module Handler.Fay where

import Import
import Yesod.Fay
import Fay.Convert (readFromFay)

onCommand :: CommandHandler App
onCommand render command =
    case readFromFay command of
        Just Noop -> invalidArgs ["Noop"]
        Nothing   -> invalidArgs ["Invalid command"]
