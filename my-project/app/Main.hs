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
 putStrLn ("Los puntos son:") 
 putStrLn ("Punto A: (" ++ x1s ++ " , " ++ y1s ++ ")")
 putStrLn ("Punto B: (" ++ x2s ++ " , " ++ y2s ++ ")")
 putStrLn ("Punto C: (" ++ x3s ++ " , " ++ y3s ++ ")")
 let d1 = distancia [(x1,y1),(x2,y2)]
 let d2 = distancia [(x1,y1),(x3,y3)]
 let d3 = distancia [(x2,y2),(x3,y3)]
 let a1 = angulo (d1,d2,d3)
 let a2 = angulo (d1,d3,d2)
 let a3 = angulo (d3,d2,d1)
 if colineales [(x1,y1),(x2,y2),(x3,y3)] then do
  putStrLn "0.0"
 else do {
  putStr "La distancia entre el punto A y B es: ";
  print (d1);
  putStr "La distancia entre el punto A y C es: ";
  print (d2);
  putStr "La distancia entre el punto B y C es: ";
  print (d3);
  putStr "El angulo a es: ";
  print (a1);
  putStr "El angulo b es: ";
  print (a2);
  putStr "El angulo c es: ";
  print (a3);
  putStr "La suma de los ángulos es: ";
  print (a1+a2+a3);
 }
 
colineales :: [(Float,Float)] -> Bool
colineales ((a1,b1):(a2,b2):(a3,b3):xs) =
 (b2-b1)*(a3-a1)== (b3-b1)*(a2-a1) &&colineales ((a1,b1):(a2,b2):xs)
colineales _ = True

distancia :: [(Float,Float)] -> Float
distancia ((a1,b1):(a2,b2):xs) =  sqrt ((a2-a1) ^ 2 + (b2-b1) ^ 2)

angulo :: (Float, Float, Float) -> Float
angulo ((a1,b1,c1)) = acos ((a1**2+b1**2-c1**2)/(2*a1*b1))