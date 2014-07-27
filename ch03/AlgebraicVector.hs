-- x and y
data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

-- Amplitude and Length
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)

-- Couldn't match expected type and actual type.
x = Cartesian2D 1 2 == Polar2D 1 2
