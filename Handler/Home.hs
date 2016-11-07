module Handler.Home where

import Import
-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
getHomeR :: Handler Html
getHomeR = defaultLayout[whamlet|
<article style=width:800px;margin-left:auto;margin-right:auto>
  <h1> APrICoT
  <h2> Overview
  <p> APrICoT, or Awesome Predicates Inferred Courtest of Types 
      is a project in development at Carnegie Mellon University under
      <a href=http://www.jeanyang.com>Jean Yang.
  <p> We plan to make a static analysis tool that will automatically repair 
      code that has privacy leaks in the program’s information flow. 
      This tool should work with existing code that may contain bugs, and it 
      should not add any extra runtime cost (except for the repaired policies).
      We hope to accomplish this by first developing inference techniques to
      infer missing policies in potentially buggy code, and then repairing them
      automatically using program synthesis tools.
  <p> You can find the project proposal 
      <a href=static/reports/APrICoTProjectProposal.pdf>here.
|]
