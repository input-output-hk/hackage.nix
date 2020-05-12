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
      identifier = { name = "sampling"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "https://github.com/jtobin/sampling";
      url = "";
      synopsis = "Sample values from collections.";
      description = "Basic sampling tools.\n\nExports variations on two simple functions for sampling from arbitrary\n'Foldable' collections:\n\n* 'sample', for sampling without replacement\n\n* 'resample', for sampling with replacement (i.e., a bootstrap)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "sampling-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sampling" or (errorHandler.buildDepError "sampling"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-sampling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."sampling" or (errorHandler.buildDepError "sampling"))
            ];
          buildable = true;
          };
        };
      };
    }