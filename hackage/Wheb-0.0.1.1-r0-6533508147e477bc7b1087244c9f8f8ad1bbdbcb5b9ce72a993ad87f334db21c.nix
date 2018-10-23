{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Wheb";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hanooter@gmail.com";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "The Batteries-Included Haskell WAI Framework";
      description = "Wheb aims at providing a simple simple and straightforward web server.\n\n> import           Web.Wheb\n> import           Data.Text.Lazy (pack)\n>\n> main :: IO ()\n> main = do\n>  opts <- generateOptions \$ addGET (pack \".\") rootPat \$ (text (pack \"Hi!\"))\n>  runWhebServer (opts :: MinOpts)\n\nWheb makes it easy to share a global context and handle requests statefully\n\n>\n>  import           Control.Concurrent.STM\n>  import           Control.Monad.IO.Class\n>  import           Data.Monoid\n>  import           Data.Text.Lazy (Text, pack)\n>  import           Web.Wheb\n>\n>  data MyApp = MyApp Text (TVar Int)\n>  data MyHandlerData = MyHandlerData Int\n>\n>  instance Default MyHandlerData where\n>    def = MyHandlerData 0\n>\n>  counterMw :: MonadIO m => WhebMiddleware MyApp MyHandlerData m\n>  counterMw = do\n>    (MyApp _ ctr) <- getApp\n>    number <- liftIO \$ readTVarIO ctr\n>    liftIO \$ atomically \$ writeTVar ctr (succ number)\n>    putReqState (MyHandlerData number)\n>    return Nothing\n>\n>  homePage :: WhebHandler MyApp MyHandlerData\n>  homePage = do\n>    (MyApp appName _)       <- getApp\n>    (MyHandlerData num) <- getReqState\n>    html \$ (\"<h1>Welcome to\" <> appName <>\n>            \"</h1><h2>You are visitor #\" <> (pack \$ show num) <> \"</h2>\")\n>\n>  main :: IO ()\n>  main = do\n>    opts <- generateOptions \$ do\n>              startingCounter <- liftIO \$ newTVarIO 0\n>              addWhebMiddleware counterMw\n>              addGET (pack \".\") rootPat \$ homePage\n>              return \$ MyApp \"AwesomeApp\" startingCounter\n>    runWhebServer opts\n\nWheb allows you to write robust high concurrency web applications simply and effectively.\n\n* The core datatype will allow you to build anything from a read-only server to a fully interactive web application with hundreds of routes without needing to define MonadTransformers.\n\n* Minimal boilerplate to start your application.\n\n* Plugin system\n";
      buildType = "Simple";
    };
    components = {
      "Wheb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.wai-extra)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.cookie)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.warp)
          (hsPkgs.conduit)
          (hsPkgs.case-insensitive)
          (hsPkgs.pwstore-fast)
          (hsPkgs.uuid)
          (hsPkgs.stm)
        ];
      };
    };
  }