--Chapter 2 Learn You a Haskell For Great Good.

--CliffNotes! Not exhaustive or subsitute for material :)

--Arithmatic Operators
 -- + - / * (same as javascript/python) / operator returns a float function 'div' returns an Int
 -- To negate a number wrap it in parentheses (-5) / 20. Soon it will be clear why.

 -- Boolean Operators
 -- && and || or (same as javascript) True, False
 -- not (js bang operator) ex: not True

 -- Equality Operators
 -- == is equal? /= is not equal?
 -- Relational Operators
 -- > < <= >= (same as js)

 -- Function Syntax
 -- in leu of brackets like JS Haskell uses Python like white space, lines and indention to delimit functions and blocks.
 -- functions are called with arguments to the right with spaces in between arguments. parens are not necessary.
 -- ex: func arg1 arg2
 -- functions with zero arguments could be called with parens ex: func
 -- This should almost never be necessary since laziness prevents the need for Thunks(function wrapping)
 -- and purity(immutability) means functions with out arguments might as well be values.

 -- side note: All functions in haskell take 1 argument and all multi argument functions are curried and can be parially applied.
 -- ex: addTwo x = 2 + x
 -- is the same as..
 -- ex: addTwo = 2 +   this is a partially applied function :)
 --     addTwo 4
 -- addTwo is a function that has 2 preloaded and accepts 1 argument

 -- Infix functions 
 -- An infix function is called with the function name inbetween its arguments e.g. Arithmatic Operators
 -- you can define an infix function by starting function name with a symbol. 
 -- to call infix functions as normal prefix functions wrap in parenthesis (+) 4 3
 -- to convert prefix to infix surround in backticks  5 `add` 3

 -- Defining Functions
 -- functionName arg1 argN = expression
 -- functions can not start with capital letter.

 -- Lists

 -- lists are defined like a js or python/ruby array [] or [1,2,3]
 -- Lists must contain all of the same type!! more on this later ex: [1,"hello", 2] will not compile.
 -- All strings are lists and are compatible with all list functions. :)
 -- List can be compared if list type is comparable :) -super cool
 -- head, tail, null,cons most important native functions for accessing lists.
 -- head x  (returns the first item) exception on empty list.
 -- tail x  (returns the list after the first item) exception on empty list.
 -- null x (returns boolean true or false is list empty)
 -- cons is expressed as infix : and adds item to front of list. It is also a constructor of sorts
 -- cons are commonly chained to construct lists 5:4:3:[] == [5,4,3]
 -- append lists with infix ++

 -- Ranges
 -- like in ruby/python represent list [startPoint..endPoint]
 -- can be used in place of a list
 -- can set 'steps' ex: [1,5..100]
 -- laziness allows infinite lists :) no big deal. ex: [10,11..]
 -- can take from infinite lists. take is a function that accepts a Int and a List

-- Tuples
-- Like lists but can contain mixture of types.
-- unlike lists cannot be added to with cons. type is based on content types/order/length.
-- fst and snd take a tuple and give the first or second value. Only works with pairs. Larger tuples use pattern matching :) 

-- List Comprehensions :)
-- I like to think of these as a map function with a where clause. if the current head of list does not meet clause requirements the function isn't run.
-- Syntax [ outputFunction | arg <-list, predicate]
-- the function that is called on each iteration is called the output function.
-- predicates are expressions that evaluate to a boolean, they determine if the function is called on the current list head and if item will be included in return list.
-- one variable per list(it represents the list content type), but multiple predicates and multiple lists are allowed.
-- ex: evensOnlyAddFive = [x + 5 | x <- [1..50], x `mod` 2 == 0]  (I'm using mod as infix it calculates the modulo(remainder))


--Exercises
-- place place code below

-- 1. write an expression that squares the Int 5


-- 2. create a function that takes an Int and squares it


-- 3. create? a function that takes an Int and multiplies it by 10 (beware of unnessary function wrapping!!)


-- 4. create variable listA with the numbers 5,2,6,0 using haskell's literal constructor syntax.


-- 5. create variable listB with the numbers 3,0,9,0 using haskell's built in syntactic sugar for lists.


-- 6. create new list that is listA and listB together as one (how sweet)


-- 7. create a list with numbers ascending 1 to 500 (unconsumed :) )


-- 8. create an infinte list using the function 'cycle'


-- 9. create an infinite list that starts with one and counts by 3.


-- 10. write a function countUpByEight that takes an Int returns a list where the head is the arg and each Int increments by 8 infinitely. (simpler than it sounds, use only topics covered for now :) )


-- 11. use problem 9 and get the first 10 list items.



-- 12. use problem 10's countUpByEight pass it 1 and get the first 10 list items. ONLY! :) (hint: for now you will need to use parenthesis to controller function execution order)



-- 13. redo problem 11 using a list comprehension.


-- 14. create a function that takes a tuple and adds the first and second cell.


-- 15. create a function that takes a tuple and mutilplies the first and second cell and then multiplies the product by negative 5. Create as Infix function.  






