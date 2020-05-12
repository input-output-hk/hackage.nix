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
      identifier = { name = "elsa"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "http://github.com/ucsd-progsys/elsa";
      url = "";
      synopsis = "A tiny language for understanding the lambda-calculus";
      description = "elsa is a small proof checker for verifying sequences of\nreductions of lambda-calculus terms. The goal is to help\nstudents build up intuition about lambda-terms, alpha-equivalence,\nbeta-reduction, and in general, the notion of computation\nby substitution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      exes = {
        "elsa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."elsa" or (errorHandler.buildDepError "elsa"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."elsa" or (errorHandler.buildDepError "elsa"))
            ];
          buildable = true;
          };
        };
      };
    }