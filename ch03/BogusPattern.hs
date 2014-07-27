data Fruit = Apple | Orange

apple = "apple"

orange = "orange"

whichFruit :: String -> Fruit
whichFruit f = case f of
                 apple -> Apple
                 orange -> Orange

equational apple = Apple
equational orange = Orange


betterFruit :: String -> Maybe Fruit
betterFruit f = case f of
                  "apple"  -> Just Apple
                  "orange" -> Just Orange
                  _        -> Nothing
