--Chapter 3 Learn You a Haskell For Great Good.


-- Hakell Type System (high points)

-- Haskell is strongly typed and will not compile if type is unexpected.
-- Haskell uses advanced Hindley-Milner type inference. You do not need to explicitly declare types.
-- :t is a function that gives you the type of it's argument.

-- Basic Types
-- Int -- Whole numbers up to 2147483647
-- Integer -- Whole numbers unbounded, less efficent for smaller numbers.
-- Float -- Real floating point.
-- Double -- double precision floating point.
-- Bool -- True, False
-- Char -- single character in single quotes. (remember a string is a list of Char)
-- A list can have any type but only one. [Int] [Char] [Bool]

-- Function Types
-- While types are infered in Haskell it is convention to declare function type when defining a function. Called Function Signatures. How Haskellers Comment :)
-- Function Signatures start with the name :: express argument -> return value  ex: addValues :: [Int] -> Int


--Polymorphism

 -- A polymorphic type is a type whose operations can also be applied to values of some other type, or types.
 -- Also called generics in some languages(Java, C)
 -- Polymorphism is used in function arguments to make code more reusable.
 -- Can be used anywhere that expression will work for multiple more specific types.
 -- Uses type varibles a b c d e ...  declare in order
 -- ex: length :: [a] -> Int (function signature for calculating length of list) List content type is irrelevant in calculating the length.
 -- ex: head :: [a] -> a  (head function doesn't matter what is in the list, but the return type will be the same.)


 -- Type Classes(Brief mention, more in depth later)

 -- Type Classes are used to represent supported behavior of a type.
 -- More specifically the are used with polymorphism in Function Signatures to make type variables more specific.
 -- Type Classes are used at the start of a function signature. followed by => and then then the function signature
 -- Can create own type classes :)
 -- ex: countToTen :: (Enum a) => a -> [a]  (The left side of => indicates our type variable a can be anything as long it has enumerable behavior. This function might create a range.)


 -- Exercises

 -- Go back and declare function signatures for all functions created in Chapter 2 Excercises.

