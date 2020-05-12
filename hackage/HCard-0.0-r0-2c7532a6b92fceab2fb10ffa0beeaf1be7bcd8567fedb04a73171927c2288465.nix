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
      specVersion = "1.6";
      identifier = { name = "HCard"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Joe Fredette";
      homepage = "http://patch-tag.com/publicrepos/HCard";
      url = "http://patch-tag.com/publicrepos/HCard";
      synopsis = "A library for implementing a Deck of Cards";
      description = "HCard provides a standard interface to a deck of cards -- providing shuffling, permutation irrelevant equality of hands, etc. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }