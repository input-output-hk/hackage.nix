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
      specVersion = "2.0";
      identifier = { name = "escoger"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "hello@travisstaton.com";
      author = "Travis Staton";
      homepage = "";
      url = "";
      synopsis = "Terminal fuzzy selector";
      description = "Interactive fuzzy selector for the terminal. Escoger accepts\na newline separated input on stdin, and provides an interactive\nprompt to select one of these lines to output to stdout.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "escoger-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      exes = {
        "escoger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."escoger".components.sublibs.escoger-lib or (errorHandler.buildDepError "escoger:escoger-lib"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."escoger".components.sublibs.escoger-lib or (errorHandler.buildDepError "escoger:escoger-lib"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."escoger".components.sublibs.escoger-lib or (errorHandler.buildDepError "escoger:escoger-lib"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }