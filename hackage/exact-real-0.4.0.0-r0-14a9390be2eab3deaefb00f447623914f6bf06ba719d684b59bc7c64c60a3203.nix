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
      identifier = { name = "exact-real"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2015 Joe Hermaszewski";
      maintainer = "keep.it.real@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "";
      url = "";
      synopsis = "Exact real arithmetic";
      description = "please see readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."exact-real" or (errorHandler.buildDepError "exact-real"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }