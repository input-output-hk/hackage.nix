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
      specVersion = "1.20";
      identifier = {
        name = "dimensions";
        version = "0.3.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Safe type-level dimensionality for multidimensional data.";
      description = "Safe type-level dimensionality for multidimensional data.";
      buildType = "Simple";
    };
    components = {
      "dimensions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "dimensions-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.dimensions)
          ];
        };
      };
    };
  }