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
      identifier = { name = "foldl-statistics"; version = "0.1.4.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Data61 (CSIRO)";
      maintainer = "Alex.Mason@data61.csiro.au";
      author = "Alex Mason";
      homepage = "http://github.com/Data61/foldl-statistics#readme";
      url = "";
      synopsis = "Statistical functions from the statistics package implemented as\nFolds.";
      description = "The use of this package allows statistics to be computed using at most two\npasses over the input data, one to compute a mean and one to compute a further\nstatistic such as variance and /n/th central moments. All algorithms are the\nobvious implementation of Bryan O\\'Sullivan\\'s\n<https://hackage.haskell.org/package/statistics statistics> package imeplemented\nas `Fold's from the\n<https://hackage.haskell.org/package/foldl foldl> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "foldl-statistics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foldl-statistics" or (errorHandler.buildDepError "foldl-statistics"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench-folds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foldl-statistics" or (errorHandler.buildDepError "foldl-statistics"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }