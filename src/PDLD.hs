module PDLD where

import Prelude hiding (unlines)
import Data.Monoid
import Data.Text hiding (map)

import Lab
import Unit
import Display

parseInput :: Text -> Maybe LabDatum
parseInput = undefined

displayData :: DisplaySetting -> [LabDatum] -> Text
displayData s ds = header s <> (unlines $ map (displayDatum s) ds) <> footer s
