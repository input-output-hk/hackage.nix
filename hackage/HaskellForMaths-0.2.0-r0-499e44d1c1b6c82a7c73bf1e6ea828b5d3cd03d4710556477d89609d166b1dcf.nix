{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HaskellForMaths";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskellformaths-at-googlemail-dot-com";
      author = "David Amos";
      homepage = "http://www.polyomino.f2s.com/haskellformathsv2/HaskellForMathsv2.html";
      url = "";
      synopsis = "Combinatorics, group theory, commutative algebra, non-commutative algebra";
      description = "A library of maths code in the areas of combinatorics, group theory, commutative algebra, and non-commutative algebra. The library is mainly intended for educational purposes, but does have efficient implementations of several fundamental algorithms.";
      buildType = "Simple";
    };
    components = {
      "HaskellForMaths" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }