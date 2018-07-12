{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pgm";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sergey Astanin <s.astanin@gmail.com>";
        author = "Frederick Ross <madhadron@gmail.com>";
        homepage = "https://github.com/sergeyastanin/haskell-pgm";
        url = "";
        synopsis = "Pure Haskell implementation of PGM image format";
        description = "Reads and writes 8 and 16 bit PGM images, loading them into Haskell as arrays.";
        buildType = "Simple";
      };
      components = {
        "pgm" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
          ];
        };
      };
    }