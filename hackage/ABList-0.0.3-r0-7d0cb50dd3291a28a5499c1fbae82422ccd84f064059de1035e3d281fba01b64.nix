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
      identifier = { name = "ABList"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Dylan Just, Travis Cardwell";
      maintainer = "Dylan Just";
      author = "Dylan Just <dylan@techtangents.com>";
      homepage = "";
      url = "";
      synopsis = "An alternating list of two types";
      description = "An alternating list of two types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          ];
        buildable = true;
        };
      tests = {
        "the-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }