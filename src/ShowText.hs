{-# LANGUAGE FlexibleInstances, UndecidableInstances #-}
module ShowText where

import Data.Text

class ShowText a where
    showText :: a -> Text

instance Show a => ShowText a where
    showText = pack . show
