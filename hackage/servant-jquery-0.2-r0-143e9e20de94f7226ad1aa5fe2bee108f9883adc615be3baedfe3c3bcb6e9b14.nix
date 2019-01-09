{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-jquery"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Automatically derive jquery-based javascript functions to query servant webservices";
      description = "Automatically derive jquery-based javascript functions to query servant webservices.\n\nExample below that serves the generated javascript to a webpage that lets you\ntrigger webservice calls.\n\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE TypeOperators #-}\n> {-# LANGUAGE DeriveGeneric #-}\n> {-# LANGUAGE GeneralizedNewtypeDeriving #-}\n>\n> import Control.Concurrent.STM\n> import Control.Monad.IO.Class\n> import Data.Aeson\n> import Data.Proxy\n> import GHC.Generics\n> import Network.Wai.Handler.Warp (run)\n> import Servant\n> import Servant.JQuery\n> import System.FilePath\n>\n> -- * A simple Counter data type\n> newtype Counter = Counter { value :: Int }\n>   deriving (Generic, Show, Num)\n>\n> instance ToJSON Counter\n>\n> -- * Shared counter operations\n>\n> -- Creating a counter that starts from 0\n> newCounter :: IO (TVar Counter)\n> newCounter = newTVarIO 0\n>\n> -- Increasing the counter by 1\n> counterPlusOne :: MonadIO m => TVar Counter -> m Counter\n> counterPlusOne counter = liftIO . atomically \$ do\n>   oldValue <- readTVar counter\n>   let newValue = oldValue + 1\n>   writeTVar counter newValue\n>   return newValue\n>\n> currentValue :: MonadIO m => TVar Counter -> m Counter\n> currentValue counter = liftIO \$ readTVarIO counter\n>\n> -- * Our API type\n> type TestApi = \"counter\" :> Post Counter -- endpoint for increasing the counter\n>           :<|> \"counter\" :> Get  Counter -- endpoint to get the current value\n>           :<|> Raw                       -- used for serving static files\n>\n> testApi :: Proxy TestApi\n> testApi = Proxy\n>\n> -- * Server-side handler\n>\n> -- where our static files reside\n> www :: FilePath\n> www = \"examples/www\"\n>\n> -- defining handlers\n> server :: TVar Counter -> Server TestApi\n> server counter = counterPlusOne counter     -- (+1) on the TVar\n>             :<|> currentValue counter       -- read the TVar\n>             :<|> serveDirectory www         -- serve static files\n>\n> runServer :: TVar Counter -- ^ shared variable for the counter\n>           -> Int          -- ^ port the server should listen on\n>           -> IO ()\n> runServer var port = run port (serve testApi \$ server var)\n>\n> -- * Generating the JQuery code\n>\n> incCounterJS :<|> currentValueJS :<|> _ = jquery testApi\n>\n> writeJS :: FilePath -> [AjaxReq] -> IO ()\n> writeJS fp functions = writeFile fp \$\n>   concatMap generateJS functions\n>\n> main :: IO ()\n> main = do\n>   -- write the JS code to www/api.js at startup\n>   writeJS (www </> \"api.js\")\n>           [ incCounterJS, currentValueJS ]\n>\n>   -- setup a shared counter\n>   cnt <- newCounter\n>\n>   -- listen to requests on port 8080\n>   runServer cnt 8080";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.servant) (hsPkgs.lens) ];
        };
      exes = {
        "counter" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.servant)
            (hsPkgs.servant-jquery)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }