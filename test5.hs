data Rect = Rect { x::Int, y::Int, w::Int, h::Int } deriving Show
data Point = Point { a::Int, b::Int} deriving Show
contains (Rect x y w h) (Point a b) =
    x <= a && a < a + w && y <= b && b < y + h

main = do
    let f = Rect {x=2,y=2,w=3,h=3} 
    print $ contains f (Point 1 1)
    print $ contains f (Point 2 2)
    print $ contains f (Point 3 3)
    print $ contains f (Point 4 4)
    print $ contains f (Point 5 5)