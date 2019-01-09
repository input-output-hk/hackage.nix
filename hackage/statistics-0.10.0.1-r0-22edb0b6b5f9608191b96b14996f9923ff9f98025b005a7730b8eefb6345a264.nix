{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "statistics"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions";
      description = "This library provides a number of common functions and types useful\nin statistics.  We focus on high performance, numerical robustness,\nand use of good algorithms.  Where possible, we provide\nreferences to the statistical literature.\n\nThe library's facilities can be divided into four broad categories:\n\n* Working with widely used discrete and continuous probability\ndistributions.  (There are dozens of exotic distributions in use;\nwe focus on the most common.)\n\n* Computing with sample data: quantile estimation, kernel density\nestimation, histograms, bootstrap methods, significance testing,\nand autocorrelation analysis.\n\n* Random variate generation under several different distributions.\n\n* Common statistical tests for significant differences between\nsamples.\n\nChanges in 0.10.0.0:\n\n* The type classes @Mean@ and @Variance@ are split in two. This is\nrequired for distributions which do not have finite variance or\nmean.\n\n* The @S.Sample.KernelDensity@ module has been renamed, and\ncompletely rewritten to be much more robust.  The older module\noversmoothed multi-modal data.  (The older module is still\navailable under the name @S.Sample.KernelDensity.Simple@).\n\n* Histogram computation is added, in @S.Sample.Histogram@.\n\n* Forward and inverse discrete Fourier and cosine transforms are\nadded, in @S.Transform@.\n\n* Root finding is added, in @S.Math.RootFinding@.\n\n* The @complCumulative@ function is added to the @Distribution@\nclass in order to accurately assess probalities P(X>x) which are\nused in one-tailed tests.\n\n* A @stdDev@ function is added to the @Variance@ class for\ndistributions.\n\n* The constructor @S.Distribution.normalDistr@ now takes standard\ndeviation instead of variance as its parameter.\n\n* A bug in @S.Quantile.weightedAvg@ is fixed. It produced a wrong\nanswer if a sample contained only one element.\n\n* Bugs in quantile estimations for chi-square and gamma distribution\nare fixed.\n\n* Integer overlow in @mannWhitneyUCriticalValue@ is fixed. It\nproduced incorrect critical values for moderately large\nsamples. Something around 20 for 32-bit machines and 40 for 64-bit\nones.\n\n* A bug in @mannWhitneyUSignificant@ is fixed. If either sample was\nlarger than 20, it produced a completely incorrect answer.\n\n* One- and two-tailed tests in @S.Tests.NonParametric@ are selected\nwith sum types instead of @Bool@.\n\n* Test results returned as enumeration instead of @Bool@.\n\n* Performance improvements for Mann-Whitney U and Wilcoxon tests.\n\n* Module @S.Tests.NonParamtric@ is split into @S.Tests.MannWhitneyU@\nand @S.Tests.WilcoxonT@\n\n* @sortBy@ is added to @S.Function@.\n\n* Mean and variance for gamma distribution are fixed.\n\n* Much faster cumulative probablity functions for Poisson and\nhypergeometric distributions.\n\n* Better density functions for gamma and Poisson distributions.\n\n* Student-T, Fisher-Snedecor F-distributions and Cauchy-Lorentz\ndistrbution are added.\n\n* The function @S.Function.create@ is removed. Use @generateM@ from\nthe @vector@ package instead.\n\n* Function to perform approximate comparion of doubles is added to\n@S.Function.Comparison@\n\n* Regularized incomplete beta function and its inverse are added to\n@S.Function@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.erf)
          (hsPkgs.monad-par)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs.base);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.statistics)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.erf)
            ];
          };
        };
      };
    }