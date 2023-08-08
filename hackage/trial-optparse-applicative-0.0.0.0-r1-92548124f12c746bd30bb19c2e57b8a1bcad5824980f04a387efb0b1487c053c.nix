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
      specVersion = "2.4";
      identifier = {
        name = "trial-optparse-applicative";
        version = "0.0.0.0";
        };
      license = "MPL-2.0";
      copyright = "2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/trial";
      url = "";
      synopsis = "Trial helper functions for optparse-applicative";
      description = "@Trial@ data structure related helper functions\nfor [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."trial" or (errorHandler.buildDepError "trial"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      };
    }