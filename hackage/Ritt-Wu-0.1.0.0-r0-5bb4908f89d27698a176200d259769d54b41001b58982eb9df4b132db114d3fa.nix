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
      specVersion = "1.12";
      identifier = { name = "Ritt-Wu"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jose Seraquive";
      maintainer = "jose.seraquive@gmail.com";
      author = "Jose Luis Seraquive Cuenca";
      homepage = "https://github.com/githubuser/Ritt-Wu#readme";
      url = "";
      synopsis = "Parallel implementation of Ritt-Wu's algorithm.";
      description = "Please see the README on GitHub at <https://github.com/xxAVOGADROxx/Ritt-Wu/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."scheduler" or (errorHandler.buildDepError "scheduler"))
          (hsPkgs."sscript" or (errorHandler.buildDepError "sscript"))
        ];
        buildable = true;
      };
      exes = {
        "Ritt-Wu-exe" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (errorHandler.buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."scheduler" or (errorHandler.buildDepError "scheduler"))
            (hsPkgs."sscript" or (errorHandler.buildDepError "sscript"))
          ];
          buildable = true;
        };
      };
      tests = {
        "Ritt-Wu-test" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (errorHandler.buildDepError "Ritt-Wu"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."scheduler" or (errorHandler.buildDepError "scheduler"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "Ritt-Wu-benchmark" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (errorHandler.buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."scheduler" or (errorHandler.buildDepError "scheduler"))
            (hsPkgs."sscript" or (errorHandler.buildDepError "sscript"))
          ];
          buildable = true;
        };
      };
    };
  }