import Data.Bits ( (.|.) )
data Color = Black | Blue | Green | Yellow | Red | Magenta | Cyan | White deriving (Show, Enum)
mix a b = if fromEnum  a == fromEnum b 
    then a
    else (toEnum (fromEnum a .|. fromEnum b) :: Color)

main = do
    print $ mix Red Blue
    print $ mix Magenta Blue
    print $ mix Magenta Green