{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-backend-wai"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dave.laing.80@gmail.com";
      author = "Dave Laing";
      homepage = "";
      url = "";
      synopsis = "Reflex interface to `wai`";
      description = "Reflex interface to `wai`.\n\nA minimal example:\n\n> {-# LANGUAGE OverloadedStrings #-}\n> module Main where\n>\n> import Network.Wai (responseLBS)\n> import Network.HTTP.Types.Status (status200)\n>\n> import Reflex.Backend.Warp (runAppForever)\n>\n> main :: IO ()\n> main =\n>   runAppForever 8080 $ \\eReq -> do\n>     let eRes = responseLBS status200 [] \"Hi\" <$ eReq\n>     pure eRes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."reflex-backend-wai" or (errorHandler.buildDepError "reflex-backend-wai"))
            ];
          buildable = true;
          };
        };
      };
    }