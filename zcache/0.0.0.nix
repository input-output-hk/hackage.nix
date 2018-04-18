{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "zcache";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "amsay@amsay.net";
        author = "Sam Anklesaria";
        homepage = "https://patch-tag.com/r/salazar/zcache/";
        url = "";
        synopsis = "Zobrist keys for game state tracking";
        description = "ZCache provides zobrist key generation for perfect information games.\nIt also includes convenience data structures  (maps and sets) that\nuse zobrist keys internally.";
        buildType = "Simple";
      };
      components = {
        zcache = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mersenne-random-pure64
            hsPkgs.containers
          ];
        };
      };
    }