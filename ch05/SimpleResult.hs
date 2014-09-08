module SimpleResult where

import SimpleJSON

result :: JValue
result = JObject [
  ("query", JString "awkaward squad haskell"),
  ("estimatedCount", JNumber 3920),
  ("moreResults", JBool True),
  ("results", JArray [
      JObject [
         ("title", JString "Simon Peyton Jones: papers"),
         ("snippet", JString "Tackling the awkard ..."),
         ("url", JString "http://.../marktoberdorf/")
      ]])
  ]

