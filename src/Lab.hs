module Lab where
import Data.Text
import Unit

data LabTest = LTest { name :: Text
                     , unit :: Unit
                     , range :: Maybe (Double, Double)
                     } deriving (Show)

data LabDatum = LDatum { test :: LabTest, value :: Double} deriving (Show)

checkRange :: LabDatum -> Maybe LNH
checkRange d = do
    (l,h) <- range . test $ d
    let v = value d
        judgement
            | v < l = Low
            | h < v = High
            | otherwise = Normal
    return judgement

data LNH = Low | Normal | High deriving (Show)

type ShowScheme = LabDatum -> Text
