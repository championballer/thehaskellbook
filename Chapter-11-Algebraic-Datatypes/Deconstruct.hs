newtype Name = Name String deriving Show
newtype Acres = Acres Int deriving Show

-- Farmer is a sum
data FarmerType = DairyFarmer 
                | WheatFarmer
                | SoybeanFarmer
                deriving Show

data Farmer = Farmer Name Acres FarmerType deriving Show