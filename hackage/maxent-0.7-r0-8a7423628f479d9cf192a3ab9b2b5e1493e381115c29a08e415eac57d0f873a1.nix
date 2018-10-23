{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "maxent";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "(c) Jonathan Fischoff 2012-2014, (c) Eric Pashman 2014";
      homepage = "https://github.com/jfischoff/maxent";
      url = "";
      synopsis = "Compute Maximum Entropy Distributions";
      description = "The maximum entropy method, or MAXENT, is variational approach for computing probability\ndistributions given a list of moment, or expected value, constraints.\n\nHere are some links for background info.\n\nA good overview of applications:\n<http://cmm.cit.nih.gov/maxent/letsgo.html>\n\nOn the idea of maximum entropy in general:\n<http://en.wikipedia.org/wiki/Principle_of_maximum_entropy>\n\nUse this package to compute discrete maximum entropy distributions over a list of values and\nlist of constraints.\n\nHere is a the example from Probability the Logic of Science\n\n>> maxent 0.00001 [1,2,3] [average 1.5]\n> Right [0.61, 0.26, 0.11]\n\nThe classic dice example\n\n>> maxent 0.00001 [1,2,3,4,5,6] [average 4.5]\n> Right [.05, .07, 0.11, 0.16, 0.23, 0.34]\n\nOne can use different constraints besides the average value there.";
      buildType = "Simple";
    };
    components = {
      "maxent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nonlinear-optimization)
          (hsPkgs.vector)
          (hsPkgs.ad)
          (hsPkgs.lagrangian)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nonlinear-optimization)
            (hsPkgs.vector)
            (hsPkgs.ad)
            (hsPkgs.hmatrix)
            (hsPkgs.lagrangian)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }