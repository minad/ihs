#!/usr/bin/env runhaskell

import Data.List (isSuffixOf, isPrefixOf, partition, stripPrefix, dropWhileEnd)
import System.Environment (getArgs)
import System.Process (readProcess)
import Data.Char (isSpace)

data Token
  = String String
  | Output Bool Bool String
  | Block  Bool Bool String
  deriving (Show)

stripSuffix :: Eq a => [a] -> [a] -> Maybe [a]
stripSuffix s t = reverse <$> stripPrefix (reverse s) (reverse t)

dropSpace :: String -> String
dropSpace = dropSpaceBegin . dropSpaceEnd

dropSpaceBegin :: String -> String
dropSpaceBegin = dropWhile isSpace

dropSpaceEnd :: String -> String
dropSpaceEnd = dropWhileEnd isSpace

parse :: String -> [Token]
parse ('{':'{':'-':'-':s) = parseBlock (\a b -> Block True a ("{-" ++ b ++ "-}")) s
parse ('{':'{':'-':'=':s) = parseBlock (Output True)  s
parse ('{':'{':'=':s)     = parseBlock (Output False) s
parse ('{':'{':'-':s)     = parseBlock (Block True)   s
parse ('{':'{':s)         = parseBlock (Block False)  s
parse (c:s)               = parseString [c] s
parse []                  = []

parseString :: String -> String -> [Token]
parseString s []            = [String (reverse s)]
parseString s t@('{':'{':_) = String (reverse s) : parse t
parseString t (c:s)         = parseString (c:t) s

parseBlock :: (Bool -> String -> Token) -> String -> [Token]
parseBlock f s = go [] (dropSpace s)
  where go a ('-':'}':'}':t) = f True  (reverse $ dropSpace a) : parse t
        go a ('}':'}':t)     = f False (reverse $ dropSpace a) : parse t
        go a (c:t)           = go (c:a) t
        go _ []              = error "Unexpected end"

strip :: [Token] -> [Token]
strip (String s : Block True a b : t)  = String (dropSpaceEnd s) : strip (Block False a b : t)
strip (Block  a True b : String s : t) = Block  a False b : strip (String (dropSpaceBegin s) : t)
strip (Output a True b : String s : t) = Output a False b : strip (String (dropSpaceBegin s) : t)
strip (Block a b s : t)                = Block a b s : strip t
strip (Output a b s : t)               = Output a b s : strip t
strip (String s : t)                   = String s : strip t
strip []                               = []

sugarBlock :: String -> ShowS
sugarBlock s | Just t <- stripPrefix "let " s, Just u <- stripSuffix "=" t = (u++) . (" <- pure $ do { "++)
sugarBlock "end" = ("};\n" ++)
sugarBlock s     = close . (s ++) . open
  where close | "else" `isPrefixOf` s = (" } "++)
              | otherwise             = id
        open  | "do" `isSuffixOf` s   = (" { " ++)
              | any (`isSuffixOf` s) ["then", "->", "else"] = (" do { " ++)
              | otherwise             = (";\n"++)

render :: [Token] -> ShowS
render (b@(Block _ _ s) : t) | isImport b = (s++) . ('\n':) . render t
                             | otherwise = sugarBlock s . render t
render (Output _ _ s : t) = ("render (" ++) . (s ++) . (");\n"++) . render t
render (String s : t)     = ("putStr " ++) . shows s . (";\n"++) . render t
render []                 = id

isImport :: Token -> Bool
isImport (Block _ _ s) = "import " `isPrefixOf` s
isImport _ = False

renderMain :: [Token] -> String
renderMain toks = let (imports, code) = partition isImport toks in
  "{-# LANGUAGE FlexibleInstances #-}\n\
  \{-# LANGUAGE DefaultSignatures #-}\n\
  \import Control.Monad\n\
  \import Control.Applicative\n\
  \import Data.Int\n\
  \import Data.Word\n\
  \import Data.Foldable\n\
  \import Data.Traversable\n"
  ++ render imports "" ++
  "class Render a where\n\
  \  render :: a -> IO ()\n\
  \  default render :: Show a => a -> IO ()\n\
  \  render = putStr . show\n\
  \instance Render Char where render = putChar\n\
  \instance Render [Char] where render = putStr\n\
  \instance Render a => Render (IO a) where render = (>>= render)\n\
  \instance Render Int\n\
  \instance Render Int8\n\
  \instance Render Int16\n\
  \instance Render Int32\n\
  \instance Render Int64\n\
  \instance Render Word\n\
  \instance Render Word8\n\
  \instance Render Word16\n\
  \instance Render Word32\n\
  \instance Render Word64\n\
  \instance Render Integer\n\
  \instance Render Float\n\
  \instance Render Double\n\
  \main :: IO ()\n\
  \main = do {\n" ++ render code "" ++ "}\n"

main :: IO ()
main = do
  (opts,args) <- partition (isPrefixOf "-") <$> getArgs
  case args of
    [file] -> do
      source <- readFile file
      let code = renderMain $ strip $ parse source
      if opts == ["-c"] then
        putStr code
      else
        readProcess "runhaskell" [] code >>= putStr
    _ -> error "Usage: ehs [-c] FILE"
