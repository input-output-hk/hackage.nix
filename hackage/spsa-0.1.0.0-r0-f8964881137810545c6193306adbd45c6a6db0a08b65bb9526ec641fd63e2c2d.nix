{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "spsa";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013-2014 Jon Eisen\n(c) 2013-2013 Metric Feat LLC";
      maintainer = "jon@joneisen.me";
      author = "Jon Eisen";
      homepage = "https://github.com/yanatan16/haskell-spsa";
      url = "";
      synopsis = "Simultaneous Perturbation Stochastic Approximation Optimization Algorithm";
      description = "The Simultaneous Perturbation Stochastic Approximation (SPSA) Optimization Algorithm implemented in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.hmatrix)
        ] ++ pkgs.lib.optionals (flags.developer) [
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.HUnit)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.spsa)
            (hsPkgs.random)
            (hsPkgs.hmatrix)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.spsa)
            (hsPkgs.hmatrix)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }