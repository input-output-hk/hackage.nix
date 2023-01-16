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
      identifier = { name = "integer-types"; version = "0.0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/integer-types";
      url = "";
      synopsis = "Integer, Natural, and Positive";
      description = "The base package contains two unbounded integral types:\nInteger (-∞, ∞) and Natural (0, ∞). This package expands that\nintegral repertoire with the addition of Positive (1, ∞).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."quaalude" or (errorHandler.buildDepError "quaalude"))
          ];
        buildable = true;
        };
      tests = {
        "test-integer-types" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."quaalude" or (errorHandler.buildDepError "quaalude"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."integer-types" or (errorHandler.buildDepError "integer-types"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }