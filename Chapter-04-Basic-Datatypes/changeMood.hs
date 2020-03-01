-- changeMood.hs

module ChangeMood where

data Mood = Blah | Woot deriving (Show)

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

changeMood' :: a -> Mood
changeMood' x = Woot