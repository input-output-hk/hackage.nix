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
      specVersion = "3.0";
      identifier = { name = "samsort"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Soumik Sarkar";
      maintainer = "soumiksarkar.3120@gmail.com";
      author = "Soumik Sarkar";
      homepage = "https://github.com/meooow25/samsort";
      url = "";
      synopsis = "A stable adaptive mergesort implementation";
      description = "A stable adaptive mergesort implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "samsort-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."samsort" or (errorHandler.buildDepError "samsort"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }