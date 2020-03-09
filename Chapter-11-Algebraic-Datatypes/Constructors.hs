data Guesswhat = Chickenbutt deriving (Eq, Show)
data Id a = MkId deriving (Eq, Show)


data Product a b = Product a b deriving (Eq, Show)
data Sum a b = First a | Second b deriving (Eq, Show)

data RecordProduct a b = 
    RecordProduct { pfirst :: a
                  , psecond :: b}
                  deriving (Eq, Show)

newtype NumCow = NumCow Int deriving (Eq, Show)
newtype NumPig = NumPig Int deriving (Eq, Show)
data Farmhouse = 
    Farmhouse NumCow NumPig
    deriving (Eq, Show)

type Farmhouse' = Product NumCow NumPig

cowNum :: Farmhouse' -> Int
cowNum (Product (NumCow x) _ ) = x

pigNum :: Farmhouse -> Int
pigNum (Farmhouse _ (NumPig x)) = x

newtype NumSheep = NumSheep Int deriving (Eq, Show)

data BigFarmHouse = BigFarmHouse NumCow NumPig NumSheep deriving (Eq, Show)

type BigFarmHouse' = Product NumCow (Product NumPig NumSheep)

sheepNum :: BigFarmHouse' -> Int
sheepNum (Product _ (Product _ (NumSheep x))) = x

type Name = String
type Age = Int
type LovesMud = Bool
type PoundsOfWool = Int

data CowInfo = CowInfo Name Age deriving (Eq, Show)
data PigInfo = PigInfo Name Age LovesMud deriving (Eq, Show)
data SheepInfo = SheepInfo Name Age PoundsOfWool deriving (Eq, Show)

data Animal = Cow CowInfo
            | Pig PigInfo
            | Sheep SheepInfo
            deriving (Eq, Show)

type Animal' = Sum CowInfo (Sum PigInfo SheepInfo)

type Awesome = Bool
data Twitter = Twitter deriving (Eq, Show)
data AskFm = AskFm deriving (Eq, Show)

type SocialNetwork' = Sum Twitter AskFm
socialNetwork :: Sum Twitter AskFm
socialNetwork = First Twitter