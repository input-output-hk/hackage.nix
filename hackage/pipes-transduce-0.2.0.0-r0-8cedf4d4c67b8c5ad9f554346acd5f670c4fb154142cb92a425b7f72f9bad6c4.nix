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
      specVersion = "1.8.0.2";
      identifier = {
        name = "pipes-transduce";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Daniel Diaz";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Interfacing pipes with foldl folds.";
      description = "Grab-bag of functions for interfacing pipes with foldl folds.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.foldl)
          (hsPkgs.comonad)
          (hsPkgs.free)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-text)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.void)
          (hsPkgs.conceit)
          (hsPkgs.lens-family-core)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.free)
            (hsPkgs.pipes)
            (hsPkgs.doctest)
            (hsPkgs.foldl)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-transduce)
          ];
        };
      };
    };
  }