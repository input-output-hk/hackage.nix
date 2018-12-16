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
      specVersion = "2.0";
      identifier = {
        name = "primitive-sort";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/primitive-sort";
      url = "";
      synopsis = "Sort primitive arrays";
      description = "This library provides a stable sorting algorithm for primitive arrays.\nWhen extra capabilities are available, the sort is parallelized.\n\nThe algorithm currently uses mergesort on large chunks and switches\nto insertion sort on small chunks. The are also novel improvements\nto increase the performance if the input array is already mostly sorted.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.contiguous)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive-sort)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.primitive)
            (hsPkgs.containers)
            (hsPkgs.smallcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive-sort)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive-sort)
            (hsPkgs.gauge)
            (hsPkgs.random)
            (hsPkgs.primitive)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }