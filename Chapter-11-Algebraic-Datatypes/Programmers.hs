data OperatingSystem = GnuPlusLinux
                     | OpenBSD
                     | Mac
                     | Windows
                     deriving (Eq, Show)

data ProgLang = Haskell
              | Agda
              | Idris
              | Purescript
              deriving (Eq, Show)

allOperatingSystems :: [OperatingSystem]
allOperatingSystems = [GnuPlusLinux
                      ,OpenBSD
                      ,Mac
                      ,Windows
                      ]

allLanguages :: [ProgLang]
allLanguages = [Haskell, Agda, Idris, Purescript]

allProgrammers :: [Programmer]
allProgrammers = 