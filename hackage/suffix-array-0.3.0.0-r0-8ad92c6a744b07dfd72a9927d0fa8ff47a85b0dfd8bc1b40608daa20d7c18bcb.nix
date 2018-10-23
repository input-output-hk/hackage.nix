{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "suffix-array";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Joshua Simmons";
      maintainer = "joshua.simmons@emptypath.com";
      author = "Joshua Simmons";
      homepage = "https://github.com/kadoban/suffix-array#readme";
      url = "";
      synopsis = "Simple and moderately efficient suffix array implementation";
      description = "A simple implementation of a suffix array, with\nlongest-common-prefix array. While not\nasymptotically optimal, performs well in practice\nfor medium use.";
      buildType = "Simple";
    };
    components = {
      "suffix-array" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
        ];
      };
      exes = {
        "suffix-array-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.suffix-array)
          ];
        };
      };
      tests = {
        "suffix-array-test" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.suffix-array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "suffix-array-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.suffix-array)
          ];
        };
      };
    };
  }