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
      specVersion = "1.24";
      identifier = { name = "timestamp"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Oleg Shevchenko <shevchenko.cmc@gmail.com>";
      homepage = "https://github.com/metrix-ai/timestamp";
      url = "";
      synopsis = "Space-efficient Unix timestamp and utilities";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          ];
        buildable = true;
        };
      };
    }