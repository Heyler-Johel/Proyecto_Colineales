module Main where

import Lib



main :: IO ()
main = do
 putStrLn "Bienvenido"
 putStrLn "Ingrese un numero del tipo flotante para el primer valor en x"
 x1s <- getLine
 let x1 = read x1s :: Float
 putStrLn "Ingrese un numero del tipo flotante para el primer valor en y"
 y1s <- getLine
 let y1 = read y1s :: Float
 putStrLn "Ingrese un numero del tipo flotante para el segundo valor en x"
 x2s <- getLine
 let x2 = read x2s :: Float
 putStrLn "Ingrese un numero del tipo flotante para el segundo valor en y"
 y2s <- getLine
 let y2 = read y2s :: Float
 putStrLn "Ingrese un numero del tipo flotante para el tercer valor en x"
 x3s <- getLine
 let x3 = read x3s :: Float
 putStrLn "Ingrese un numero del tipo flotante para el tercer valor en y"
 y3s <- getLine
 let y3 = read y3s :: Float
 putStrLn ("Los puntos son: (" ++ x1s ++ " , " ++ y1s ++ "), (" ++ x2s ++ " , " ++ y2s ++ "), (" ++ x3s ++ " , " ++ y3s ++ ")")
 if colineales [(x1,y1),(x2,y2),(x3,y3)] then do
  putStrLn "0.0"
 else putStrLn "False"

 
colineales :: [(Float,Float)] -> Bool
colineales ((a1,b1):(a2,b2):(a3,b3):xs) =
     (b2-b1)*(a3-a1)== (b3-b1)*(a2-a1) &&colineales ((a1,b1):(a2,b2):xs)
colineales _ = True