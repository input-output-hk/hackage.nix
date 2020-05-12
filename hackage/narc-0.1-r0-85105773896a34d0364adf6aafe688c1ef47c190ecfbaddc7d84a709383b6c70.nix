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
      specVersion = "1.2";
      identifier = { name = "narc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ezra@ezrakilty.net";
      author = "Ezra e. k. Cooper";
      homepage = "http://ezrakilty.net/projects/narc";
      url = "";
      synopsis = "Query SQL databases using Nested Relational Calculus embedded in Haskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          ];
        buildable = true;
        };
      };
    }