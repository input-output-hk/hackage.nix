{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "octopus";
          version = "0.0.2.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "zankoku.okuno@gmail.com";
        author = "Zankoku Okuno";
        homepage = "https://github.com/Zankoku-Okuno/octopus/";
        url = "";
        synopsis = "Lisp with more dynamism, more power, more simplicity.";
        description = "Octopus is a highly dynamic programming language with an astounding (I think)\npower-to-weight ratio (expressivity-to-complexity). With just a handful of\nsimple primitives, Octopus provides a complete programming environment. Its\nmain focus is on complete programmer control, not on performance or static\nanalysis. While the user can shoot themselves, the most natural methods will\nbe the most reasonable.";
        buildType = "Simple";
      };
      components = {
        octopus = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.symbol
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.hexpr
          ];
        };
        exes = {
          octi = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.symbol
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.hexpr
            ];
          };
        };
      };
    }