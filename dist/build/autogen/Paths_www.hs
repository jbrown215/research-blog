module Paths_www (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/JordanBrown/.cabal/bin"
libdir     = "/Users/JordanBrown/.cabal/lib/x86_64-osx-ghc-7.10.3/www-0.0.0-LFTG64qEwelKHANDWWckBr"
datadir    = "/Users/JordanBrown/.cabal/share/x86_64-osx-ghc-7.10.3/www-0.0.0"
libexecdir = "/Users/JordanBrown/.cabal/libexec"
sysconfdir = "/Users/JordanBrown/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "www_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "www_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "www_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "www_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "www_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
