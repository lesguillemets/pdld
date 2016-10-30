{-# LANGUAGE OverloadedStrings #-}
module Unit where
import Data.Text (Text)
import ShowText

-- TODO : allow prefixes
newtype Unit = Unit Text deriving (Show)
instance ShowText Unit where
    showText (Unit u) = u

-- Predefined units

mgpdl :: Unit
mgpdl = Unit "mg/dl"
