module Main where

import Foreign.C.String

foreign import javascript "((arr,offset) => document.body.innerHTML = h$decodeUtf8z(arr,offset))"
  setInnerHtml :: CString -> IO ()

circle :: String
circle = "<svg width=300 height=300><circle cx=50% cy=50% r=50%></circle></svg>"

main :: IO ()
main = withCString circle setInnerHtml
