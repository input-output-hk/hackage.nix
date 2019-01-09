{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Wheb"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@khanson.io";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "The frictionless WAI Framework";
      description = "Wheb's a framework for building robust, high-concurrency web applications simply and effectively.\n\n* The core datatype will let you build anything from a read-only server to a fully interactive web application with basic Haskell.\n\n* Minimal boilerplate to start your application.\n\n* Session, Auth and Cache interfaces are built in. Just drop in a backend.\n\n* Typesafe web-routes or named routes and URL generation.\n\n* Easy to use for REST APIs\n\n* CSRF Protection\n\n* WebSockets\n\n* Fully database and template agnostic\n\n* Easy handler debugging.\n\n* Middleware\n\n* Fast. It deploys on warp.\n\n/Plugins:/\n\nWheb makes it easy to write plugins. Plugins can add routes, middlware, settings and even handle resource cleanup on server shutdown.\nNamed routes allow plugins to dynamically generate their routes at runtime based on settings.\n\nExamples of plugins:\n\n* Sessions\n\n* Auth\n\n* Cache\n\n* <http://hackage.haskell.org/package/wheb-mongo Wheb-Mongo>\n\n* <http://hackage.haskell.org/package/wheb-redis Wheb-Redis>\n\n* <http://hackage.haskell.org/package/wheb-strapped Wheb-Strapped>\n\n/Wheb in action:/\n\nUse with language extensions /OverloadedStrings/\n\n> import           Web.Wheb\n>\n> main :: IO ()\n> main = do\n>   opts <- genMinOpts \$ do\n>      addGET \"home\" rootPat \$ text \"Hi!\"\n>      addGET \"about\" (\"about\" </> \"something\") \$ html \"<html><body><h1>About!</h1></body></html>\"\n>   runWhebServer opts\n\n/Bigger example (Stateful.hs):/\n\nWheb makes it easy to share a global context and handle requests statefully. The Wheb monad\nis both a Reader and a State Monad allowing you to seperate thread-safe resources.\n\nBelow is an example of site that naively counts the non-unique hits across all pages. MyApp\nis our Reader's type and MyHandlerData is our State's type. MyApp is shared across requests\nwhile MyHandlerData is thread specific with a starting state given in options. We have a middleware\nthat intercepts the request, safely increments the shared resource TVar and sets our MyHandlerData\nto the correct count before it reaches our handler. We use a TVar in the Global context\nbecause any state changes to the handler state will not affect other requests.\n\n>  import           Control.Concurrent.STM\n>  import           Control.Monad.IO.Class\n>  import           Data.Monoid\n>  import           Data.Text.Lazy (Text)\n>  import           Web.Wheb\n>\n>  data MyApp = MyApp Text (TVar Int)\n>  data MyHandlerData = MyHandlerData Int\n>\n>  counterMw :: MonadIO m => WhebMiddleware MyApp MyHandlerData m\n>  counterMw = do\n>    (MyApp _ ctr) <- getApp\n>    number <- liftIO \$ atomically \$ do\n>            num <- readTVar ctr\n>            writeTVar ctr (succ num)\n>            return num\n>    putHandlerState (MyHandlerData number)\n>    return Nothing\n>\n>  homePage :: WhebHandler MyApp MyHandlerData\n>  homePage = do\n>    (MyApp appName _)   <- getApp\n>    (MyHandlerData num) <- getHandlerState\n>    html \$ (\"<h1>Welcome to\" <> appName <>\n>            \"</h1><h2>You are visitor #\" <> (spack num) <> \"</h2>\")\n>\n>  main :: IO ()\n>  main = do\n>    opts <- generateOptions \$ do\n>              startingCounter <- liftIO \$ newTVarIO 0\n>              addWhebMiddleware counterMw\n>              addGET \".\" rootPat \$ homePage\n>              return \$ (MyApp \"AwesomeApp\" startingCounter, MyHandlerData 0)\n>    runWhebServer opts";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.cookie)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.pwstore-fast)
          (hsPkgs.uuid)
          (hsPkgs.stm)
          (hsPkgs.unix)
          (hsPkgs.web-routes)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          ];
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs.Wheb)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }