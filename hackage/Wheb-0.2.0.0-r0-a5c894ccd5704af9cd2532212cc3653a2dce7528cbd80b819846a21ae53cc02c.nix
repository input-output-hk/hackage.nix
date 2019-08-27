let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Wheb"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@khanson.io";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "The frictionless WAI Framework";
      description = "Wheb's a framework for building robust, high-concurrency web applications simply and effectively.\n\n* The core datatype will let you build anything from a read-only server to a fully interactive web application with basic Haskell.\n\n* Minimal boilerplate to start your application.\n\n* Typesafe web-routes or named routes and URL generation.\n\n* Easy to use for REST APIs\n\n* WebSockets\n\n* Fully database and template agnostic\n\n* Easy handler debugging.\n\n* Middleware\n\n* Fast. It deploys on warp.\n\n/Plugins:/\n\nWheb makes it easy to write plugins. Plugins can add routes, middlware, settings and even handle resource cleanup on server shutdown.\nNamed routes allow plugins to dynamically generate their routes at runtime based on settings.\n\nExamples of plugins:\n\n* Sessions\n\n* Auth\n\n* <http://hackage.haskell.org/package/wheb-mongo Wheb-Mongo>\n\n* <http://hackage.haskell.org/package/wheb-strapped Wheb-Strapped>\n\n/Wheb in action:/\n\n> import           Web.Wheb\n> import           Data.Text.Lazy (pack)\n>\n> main :: IO ()\n> main = do\n>   opts <- genMinOpts \$ do\n>      addGET \"home\" rootPat \$ (text (pack \"Hi!\"))\n>      addGET \"about\" (\"about\" </> \"something\") \$ html (pack \"<html><body><h1>About!</h1></body></html>\")\n>   runWhebServer opts\n\n/Bigger example (Stateful.hs):/\n\nWheb makes it easy to share a global context and handle requests statefully. The Wheb monad\nis both a Reader and a State Monad allowing you to seperate thread-safe resources.\n\nBelow is an example of site that naively counts the non-unique hits across all pages. MyApp\nis our Reader's type and MyHandlerData is our State's type. MyApp is shared across requests\nwhile MyHandlerData is thread specific with a starting state given in options. We have a middleware\nthat intercepts the request, safely increments the shared resource TVar and sets our MyHandlerData\nto the correct count before it reaches our handler. We use a TVar in the Global context\nbecause any state changes to the handler state will not affect other requests.\n\n>  import           Control.Concurrent.STM\n>  import           Control.Monad.IO.Class\n>  import           Data.Monoid\n>  import           Data.Text.Lazy (Text, pack)\n>  import           Web.Wheb\n>\n>  data MyApp = MyApp Text (TVar Int)\n>  data MyHandlerData = MyHandlerData Int\n>\n>  counterMw :: MonadIO m => WhebMiddleware MyApp MyHandlerData m\n>  counterMw = do\n>    (MyApp _ ctr) <- getApp\n>    number <- liftIO \$ atomically \$ do\n>            num <- readTVar ctr\n>            writeTVar ctr (succ num)\n>            return num\n>    putHandlerState (MyHandlerData number)\n>    return Nothing\n>\n>  homePage :: WhebHandler MyApp MyHandlerData\n>  homePage = do\n>    (MyApp appName _)   <- getApp\n>    (MyHandlerData num) <- getHandlerState\n>    html \$ (\"<h1>Welcome to\" <> appName <>\n>            \"</h1><h2>You are visitor #\" <> (spack num) <> \"</h2>\")\n>\n>  main :: IO ()\n>  main = do\n>    opts <- generateOptions \$ do\n>              startingCounter <- liftIO \$ newTVarIO 0\n>              addWhebMiddleware counterMw\n>              addGET (pack \".\") rootPat \$ homePage\n>              return \$ (MyApp \"AwesomeApp\" startingCounter, MyHandlerData 0)\n>    runWhebServer opts";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."pwstore-fast" or (buildDepError "pwstore-fast"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          ];
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."Wheb" or (buildDepError "Wheb"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }