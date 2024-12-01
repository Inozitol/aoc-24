module Day1 (t1,t2) where

import Data.List
import Data.List.Split

t1 :: String -> String
t1 c = show.sum.map (\(x,y) -> abs $ x - y) $ (\[x,y] -> zip x y).map(sort.map(read::String->Int)) $ transpose.map (splitOn "   ") $ lines c

t2 :: String -> String
t2 c = show.sum.(\[xs,ys] -> map (\x -> x * length (filter (x==) ys)) xs).map(map(read::String->Int)) $ transpose.map (splitOn "   ") $ lines c
