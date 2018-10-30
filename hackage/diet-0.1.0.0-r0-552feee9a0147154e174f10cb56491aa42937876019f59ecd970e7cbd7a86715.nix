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
        name = "diet";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin, 2018 chessai";
      maintainer = "andrew.thaddeus@gmail.com, chessai1996@gmail.com";
      author = "Andrew Martin, chessai";
      homepage = "https://github.com/andrewthad/primitive-containers/";
      url = "";
      synopsis = "Discrete Interval Encoding Trees";
      description = "Discrete Interval Encoding Tree described by Martin Erwig in /Diets for Fat Sets, January 1993/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.contiguous)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.diet)
            (hsPkgs.primitive)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }