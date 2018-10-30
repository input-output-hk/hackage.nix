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
      specVersion = "1.8";
      identifier = {
        name = "scan-vector-machine";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Megacz <megacz@cs.berkeley.edu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Scan Vector Machine instruction set in Haskell";
      description = "An implementation of the Scan Vector Machine instruction set in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell2010)
          (hsPkgs.HUnit)
          (hsPkgs.array)
          (hsPkgs.dph-par)
          (hsPkgs.accelerate)
        ];
      };
      tests = {
        "Test" = {
          depends  = [
            (hsPkgs.haskell2010)
            (hsPkgs.HUnit)
            (hsPkgs.array)
          ];
        };
      };
    };
  }