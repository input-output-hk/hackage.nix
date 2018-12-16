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
      specVersion = "1.14";
      identifier = {
        name = "numhask";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask";
      url = "";
      synopsis = "A numeric prelude";
      description = "Classes for numbers, higher-dimension representable objects, and algebras that combine them. See NumHask.Examples for usage.\n\n> import NumHask.Prelude";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          (hsPkgs.singletons)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.numhask)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }