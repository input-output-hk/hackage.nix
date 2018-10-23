{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "statistics";
        version = "0.15.0.0";
      };
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
      "statistics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.math-functions)
          (hsPkgs.mwc-random)
          (hsPkgs.aeson)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          (hsPkgs.monad-par)
          (hsPkgs.primitive)
          (hsPkgs.dense-linear-algebra)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.data-default-class)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.statistics)
            (hsPkgs.dense-linear-algebra)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.binary)
            (hsPkgs.erf)
            (hsPkgs.aeson)
            (hsPkgs.ieee754)
            (hsPkgs.math-functions)
            (hsPkgs.mwc-random)
            (hsPkgs.primitive)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
      };
    };
  }