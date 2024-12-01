import Day1
import System.Environment
import System.IO

main :: IO()
main = do
    args <- getArgs
    let day = head args
    h <- openFile ("data/day" ++ day ++ "/input") ReadMode
    c <- hGetContents h
    out <- case day of
            "1" -> return $ (t1 c, t2 c)
            _ -> return ("", "")
    print $ fst out
    print $ snd out
    hClose h 
