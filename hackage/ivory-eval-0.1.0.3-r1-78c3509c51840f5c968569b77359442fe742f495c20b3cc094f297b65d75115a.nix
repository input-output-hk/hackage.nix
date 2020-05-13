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
      identifier = { name = "ivory-eval"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2014 Galois, Inc.";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Simple concrete evaluator for Ivory programs";
      description = "Warning!  This module is experimental and its implementation may change dramatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-eval" or (errorHandler.buildDepError "ivory-eval"))
            ];
          buildable = true;
          };
        };
      };
    }