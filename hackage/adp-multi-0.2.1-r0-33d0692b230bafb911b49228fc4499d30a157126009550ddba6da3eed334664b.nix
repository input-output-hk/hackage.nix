{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildtests = false;
      buildbenchmark = false;
      debug = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "adp-multi";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Maik Riechert, 2012";
      maintainer = "Maik Riechert";
      author = "Maik Riechert";
      homepage = "http://adp-multi.ruhoh.com";
      url = "";
      synopsis = "ADP for multiple context-free languages";
      description = "adp-multi is an implementation of Algebraic Dynamic Programming\nfor multiple context-free languages.\nIt is a library based on the original Haskell implementation\nand can be considered an unoptimized prototype.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.htrace)
        ];
      };
      exes = {
        "adp-multi-benchmarks" = {
          depends  = pkgs.lib.optionals (!(!flags.buildbenchmark)) [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.htrace)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.random-shuffle)
            (hsPkgs.mtl)
            (hsPkgs.Nussinov78)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "adp-test" = {
          depends  = pkgs.lib.optionals (!(!flags.buildtests)) [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.htrace)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.mtl)
            (hsPkgs.random-shuffle)
          ];
        };
      };
      tests = {
        "MainTestSuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.htrace)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.random-shuffle)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }