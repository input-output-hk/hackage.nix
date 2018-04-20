{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "crocodile";
          version = "0.1.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "tomhammersley@gmail.com";
        author = "Tom Hammersley";
        homepage = "https://github.com/TomHammersley/HaskellRenderer/";
        url = "";
        synopsis = "An offline renderer supporting ray tracing and photon mapping";
        description = "This is an offline renderer written purely in Haskell, supporting ray tracing and photon mapping with an irradiance cache";
        buildType = "Simple";
      };
      components = {
        exes = {
          crocodile = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.heap
              hsPkgs.bmp
              hsPkgs.mtl
              hsPkgs.mersenne-random-pure64
              hsPkgs.ghc-prim
              hsPkgs.parallel
              hsPkgs.bytestring
              hsPkgs.deepseq
            ];
          };
        };
      };
    }