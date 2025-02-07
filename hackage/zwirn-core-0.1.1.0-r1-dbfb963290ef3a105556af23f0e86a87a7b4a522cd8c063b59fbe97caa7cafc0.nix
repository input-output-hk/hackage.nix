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
      identifier = { name = "zwirn-core"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Martin Gius";
      maintainer = "Martin Gius";
      author = "Martin Gius";
      homepage = "";
      url = "";
      synopsis = "library for manipulating functions of time.";
      description = "zwirn-core provides the semantics for the zwirn live coding language.\nIt is inspired by TidalCycles and implements some of the same API for manipulating functions of time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."zwirn-core" or (errorHandler.buildDepError "zwirn-core"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "zwirn-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."zwirn-core" or (errorHandler.buildDepError "zwirn-core"))
          ];
          buildable = true;
        };
      };
    };
  }