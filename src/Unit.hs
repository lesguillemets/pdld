{-# LANGUAGE OverloadedStrings #-}
module Unit where
import Data.Text (Text)

-- TODO : allow prefixes
newtype Unit = Unit Text deriving (Show)

-- Predefined units

mgpdl :: Unit
mgpdl = Unit "mg/dl"
