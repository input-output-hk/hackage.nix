{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HaskellForMaths";
        version = "0.4.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskellformaths-at-gmail-dot-com";
      author = "David Amos";
      homepage = "http://haskellformaths.blogspot.com/";
      url = "";
      synopsis = "Combinatorics, group theory, commutative algebra, non-commutative algebra";
      description = "A library of maths code in the areas of combinatorics, group theory, commutative algebra, and non-commutative algebra. The library is mainly intended as an educational resource, but does have efficient implementations of several fundamental algorithms.";
      buildType = "Simple";
    };
    components = {
      "HaskellForMaths" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
        ];
      };
    };
  }