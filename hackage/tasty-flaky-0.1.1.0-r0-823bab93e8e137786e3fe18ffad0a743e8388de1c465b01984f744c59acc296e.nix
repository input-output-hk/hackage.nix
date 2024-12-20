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
      specVersion = "3.4";
      identifier = { name = "tasty-flaky"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Laurent René de Cotret";
      maintainer = "Laurent René de Cotret";
      author = "Laurent René de Cotret";
      homepage = "https://github.com/LaurentRDC/tasty-flaky";
      url = "";
      synopsis = "Handle flaky Tasty-based tests";
      description = "Handle flaky Tasty-based tests, with configuration retry policies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
      tests = {
        "tasty-flaky-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-flaky" or (errorHandler.buildDepError "tasty-flaky"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }