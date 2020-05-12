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
      specVersion = "1.8";
      identifier = { name = "statistics"; version = "0.15.1.0"; };
      license = "BSD-2-Clause";
      copyright = "2009-2014 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Alexey Khudaykov <alexey.skladnoy@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>, Alexey Khudaykov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/bos/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions";
      description = "This library provides a number of common functions and types useful\nin statistics.  We focus on high performance, numerical robustness,\nand use of good algorithms.  Where possible, we provide\nreferences to the statistical literature.\n\nThe library's facilities can be divided into four broad categories:\n\n* Working with widely used discrete and continuous probability\ndistributions.  (There are dozens of exotic distributions in use;\nwe focus on the most common.)\n\n* Computing with sample data: quantile estimation, kernel density\nestimation, histograms, bootstrap methods, significance testing,\nand regression and autocorrelation analysis.\n\n* Random variate generation under several different distributions.\n\n* Common statistical tests for significant differences between\nsamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."dense-linear-algebra" or (errorHandler.buildDepError "dense-linear-algebra"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."dense-linear-algebra" or (errorHandler.buildDepError "dense-linear-algebra"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = true;
          };
        };
      };
    }