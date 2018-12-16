{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "algo-s";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2016 Eric Rochester";
      maintainer = "erochest@gmail.com";
      author = "Eric Rochester";
      homepage = "";
      url = "";
      synopsis = "An implementation of Knuth's algorithm S.";
      description = "An implementaiton of Knuth's algorithm S\n(https://rosettacode.org/wiki/Knuth%27s_algorithm_S)\nwith a command-line utility for sampling from STDIN.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foldl)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "sample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.algo-s)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.mwc-random)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "algo-s-specs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.algo-s)
            (hsPkgs.errors)
            (hsPkgs.foldl)
            (hsPkgs.mwc-random)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "algo-s-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.algo-s)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }