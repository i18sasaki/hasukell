data Rect = Rect Int Int Int Int 
    | Rect3D Int Int Int Int Int Int 
    deriving Show
data Point = Point Int Int 
    | Point3D Int Int Int
    deriving Show
contains (Rect x y w h) (Point a b) =
    x <= a && a < a + w && y <= b && b < y + h
contains (Rect3D x y z w h l) (Point3D a b c) =
    x <= a && a < a + w && y <= b && b < y + h && z <= c && c < z + l

main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 1 1 1)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 2 2 2)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 3 3 3)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 4 4 4)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 5 5 5)
