module ControlledVisit where

import System.Directory (Permissions(..), getModificationTime, getPermissions)
import Data.Time.Clock (UTCTime(..))

data Info = Info {
    infoPath :: FilePath
  , infoPerms :: Maybe Permissions
  , infoSize :: Maybe Integer
  , infoModTime :: Maybe UTCTime
  } deriving (Eq, Ord, Show)

getInfo :: FilePath -> IO Info


traverse :: ([Info] -> [Info]) -> FilePath -> IO [info]
traverse order path = do
  names <- getUseFulContents path
  contents <- mapM getInfo (path : map (path </>) names)
  liftM concat
