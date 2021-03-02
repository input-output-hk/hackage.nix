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
      specVersion = "1.0";
      identifier = { name = "infinity"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "a tiny IRC bot";
      description = "a tiny IRC bot, extendable through\nplugins written in haskell";
      buildType = "Custom";
      };
    components = {
      exes = {
        "infinity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }