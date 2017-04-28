# ihs: Interpolated Haskell

[![Hackage](https://img.shields.io/hackage/v/ihs.svg)](https://hackage.haskell.org/package/ihs)
[![Build Status](https://secure.travis-ci.org/minad/ihs.png?branch=master)](http://travis-ci.org/minad/ihs)

This abomination allows you to quickly generate text files in a style similar to ERB from Ruby or PHP. But you stay typesafe!

``` haskell
{{
let bottles 0 = "no more bottles"
    bottles 1 = "1 bottle"
    bottles i = show i ++ " bottles"
-}}
{{for_ [99,98..0] $ \i ->}}
{{-if i == 0 then-}}
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
{{-else-}}
{{=bottles i}} of beer on the wall, {{=bottles i}} of beer.
Take one down and pass it around {{=bottles (i-1)}} of beer on the wall.
{{end}}
{{end-}}
```

This is free and unencumbered software released into the public domain.
