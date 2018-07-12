{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "scan-vector-machine";
          version = "0.2.7";
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
        "scan-vector-machine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.array
            hsPkgs.dph-base
            hsPkgs.accelerate
          ];
        };
        tests = {
          "Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.array
            ];
          };
        };
      };
    }