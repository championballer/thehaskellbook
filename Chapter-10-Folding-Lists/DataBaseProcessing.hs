import Data.Time

data DatabaseItem = DbString String 
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = 
    [ DbDate (UTCTime
        (fromGregorian 1911 5 1)
      (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, world!"
    , DbDate (UTCTime 
        (fromGregorian 1921 5 1)
        (secondsToDiffTime 34123))
    , DbNumber 1002
    ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate [] = []
filterDbDate ((DbDate x):xs) = x : filterDbDate xs 
filterDbDate (_:xs) = filterDbDate xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber [] = []
filterDbNumber ((DbNumber x):xs) = x : filterDbNumber xs
filterDbNumber (_:xs) = filterDbNumber xs

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent x = minimum.filterDbDate $ x

sumDb :: [DatabaseItem] -> Integer
sumDb x = sum.filterDbNumber $ x

avgDb :: [DatabaseItem] -> Double
avgDb x = ((fromIntegral.sum.filterDbNumber $ x)::Double)/(fromIntegral $ length (filterDbNumber x))