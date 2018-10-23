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
        name = "quickcheck-classes";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
      url = "";
      synopsis = "QuickCheck common typeclasses";
      description = "This library provides quickcheck properties to\nensure that typeclass instances the set of laws that they are\nsupposed to. There are other libraries that do similar\nthings, such as `genvalidity-hspec` and `checkers`. This\nlibrary differs from other solutions by not introducing\nany new typeclasses that the user needs to learn. The source\ncode for this library should be easy to understand if you\nare already familiar with quickcheck. Open an issue\nif you feel that this is not the case.";
      buildType = "Simple";
    };
    components = {
      "quickcheck-classes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.semigroupoids)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.QuickCheck)
            (hsPkgs.primitive)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }