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
      identifier = { name = "tasty-quickcheck-laws"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Automattic, Inc.";
      maintainer = "nathan.bloomfield@a8c.com";
      author = "Nathan Bloomfield";
      homepage = "https://github.com/nbloomf/tasty-quickcheck-laws#readme";
      url = "";
      synopsis = "Pre-built tasty trees for checking lawful class properties using QuickCheck";
      description = "Please see the README on GitHub at <https://github.com/nbloomf/tasty-quickcheck-laws#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
        ];
        buildable = true;
      };
      exes = {
        "tasty-quickcheck-laws-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-quickcheck-laws" or (errorHandler.buildDepError "tasty-quickcheck-laws"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tasty-quickcheck-laws-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-quickcheck-laws" or (errorHandler.buildDepError "tasty-quickcheck-laws"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }