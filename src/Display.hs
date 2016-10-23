{-# LANGUAGE OverloadedStrings #-}
module Display where

import Data.Text as T

import Unit
import Lab

data DisplaySetting =
    DisplaySetting { header :: Text
                   , displayDatum :: ShowScheme
                   , footer :: Text
                   }

