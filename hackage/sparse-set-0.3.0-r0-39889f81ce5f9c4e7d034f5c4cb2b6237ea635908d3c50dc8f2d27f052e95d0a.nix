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
      identifier = { name = "sparse-set"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "";
      url = "";
      synopsis = "Sparse set data structure";
      description = "A sparse set is a data structure that allows for efficient\ninsertion, deletion, and membership testing of elements in a set.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."sparse-vector" or (errorHandler.buildDepError "sparse-vector"))
        ];
        buildable = true;
      };
      exes = {
        "sparse-set" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparse-set" or (errorHandler.buildDepError "sparse-set"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sparse-set-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparse-set" or (errorHandler.buildDepError "sparse-set"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "sparse-set-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparse-set" or (errorHandler.buildDepError "sparse-set"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }