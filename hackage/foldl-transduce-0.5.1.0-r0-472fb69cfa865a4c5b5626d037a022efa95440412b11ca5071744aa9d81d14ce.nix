{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "foldl-transduce";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Daniel Diaz";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Transducers for foldl folds.";
      description = "Stateful transducers and streaming-preserving grouping operations for foldl folds.";
      buildType = "Simple";
    };
    components = {
      "foldl-transduce" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.bifunctors)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.foldl)
          (hsPkgs.comonad)
          (hsPkgs.free)
          (hsPkgs.void)
          (hsPkgs.split)
          (hsPkgs.monoid-subclasses)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.free)
            (hsPkgs.doctest)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.split)
            (hsPkgs.foldl)
            (hsPkgs.foldl-transduce)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.lens-family-core)
            (hsPkgs.foldl)
            (hsPkgs.foldl-transduce)
          ];
        };
      };
    };
  }