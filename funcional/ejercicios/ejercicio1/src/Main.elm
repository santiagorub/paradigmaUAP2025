module Main exposing (..)

import Html exposing (Html, a, text)


main : Html msg
main =
    text "Hello, Elm!"


add : Int -> Int -> Int
add a b =
    if b == 0 then
        a

    else
        add (a + 1) (b - 1)


multiply : Int -> Int -> Int
multiply a b =
    a * b


-- Ejercicio 1: Función Potencia


power : Int -> Int -> Int
power a b =
    if b == 0 then
        1
    else
        a * power a (b - 1)
    


-- Ejercicio 2: Factorial


factorial : Int -> Int
factorial n =
    if n == 0 then
        1
    else 
        n * factorial (n - 1)


-- Ejercicio 3: Fibonacci


fibonacciExponential : Int -> Int
fibonacciExponential n =
    if n == 0 then
        0
    else if n == 1 then 
        1
    else 
        fibonacciExponential(n - 1) + fibonacciExponential(n - 2)


fibonacciLinear : Int -> Int
fibonacciLinear n =
    fibonacciHelper n 0 1


fibonacciHelper : Int -> Int -> Int -> Int
fibonacciHelper n acc1 acc2 =
    if n == 0 then 
        acc1
    else 
        fibonacciHelper (n - 1) acc2 (acc1 + acc2)


-- Ejercicio 4: Triángulo de Pascal


pascalTriangle : Int -> Int -> Int
pascalTriangle x y =
    if y == 0 then
        1
    else if y == x then
        1
    else if y > x then
        0
    else
        pascalTriangle (x - 1) (y - 1) + pascalTriangle (x - 1) y


-- Ejercicio 5: Máximo Común Divisor (MCD)


gcd : Int -> Int -> Int
gcd a b =
    if b == 0 then
        a
    else
        gcd b (remainderBy b a)


-- Ejercicio 6: Contar Dígitos


countDigits : Int -> Int
countDigits n =
    let
        num = abs n
    in
    if n < 10 then
        1
    else 
        1 + countDigits (num // 10)


-- Ejercicio 7: Suma de Dígitos


sumDigits : Int -> Int
sumDigits n =
    let
        num = abs n
    in
    if num < 10 then 
        num
    else
        (remainderBy 10 num) + sumDigits (num // 10)


-- Ejercicio 8: Verificar Palíndromo


isPalindrome : Int -> Bool
isPalindrome n =
    let
        num = abs n
    in
    num == reverseNumber num


reverseNumber : Int -> Int
reverseNumber n =
    reverseHelper n 0


reverseHelper : Int -> Int -> Int
reverseHelper n acc =
    if n == 0 then
        acc
    else
        let
            ultimoDigito = remainderBy 10 n
            restoDeN = n // 10
            nuevoAcc = (acc * 10) + ultimoDigito
        in
    reverseHelper restoDeN nuevoAcc


-- Ejercicio 9: Paréntesis Balanceados
isBalanced : String -> Bool
isBalanced str =
    isBalancedHelper (String.toList str) 0


isBalancedHelper : List Char -> Int -> Bool
isBalancedHelper chars counter =
    if counter < 0 then 
        False
    else
        case chars of
            [] -> counter == 0
            c::rest -> if c == '(' then
                    isBalancedHelper rest (counter + 1)
                else if c == ')' then
                    isBalancedHelper rest (counter - 1)
                else
                    isBalancedHelper rest counter