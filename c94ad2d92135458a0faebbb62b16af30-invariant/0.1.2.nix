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
      specVersion = "1.9.2";
      identifier = {
        name = "invariant";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>, Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 invariant functors";
      description = "Haskell 98 invariant functors";
      buildType = "Simple";
    };
    components = {
      "invariant" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
        ];
      };
      tests = {
        "qc-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.invariant)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }