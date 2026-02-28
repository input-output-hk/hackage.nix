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
      identifier = { name = "bluefin-algae"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Li-yao Xia 2024";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "";
      url = "";
      synopsis = "Algebraic effects and named handlers in Bluefin.";
      description = "A framework for user-defined effects powered by delimited continuations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
          (hsPkgs."bluefin-internal" or (errorHandler.buildDepError "bluefin-internal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "main-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
            (hsPkgs."bluefin-algae" or (errorHandler.buildDepError "bluefin-algae"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "quadratic-counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
            (hsPkgs."bluefin-algae" or (errorHandler.buildDepError "bluefin-algae"))
          ];
          buildable = true;
        };
      };
    };
  }