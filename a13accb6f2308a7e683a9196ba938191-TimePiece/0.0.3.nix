{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TimePiece";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "A simple tile-based digital clock screen saver";
        description = "A simple tile-based digital clock screen saver";
        buildType = "Custom";
      };
      components = {
        TimePiece = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
            hsPkgs.SDL-image
            hsPkgs.SDL-ttf
            hsPkgs.SDL-gfx
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.old-locale
            hsPkgs.old-time
          ];
        };
        exes = {
          TimePiece = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.SDL-image
              hsPkgs.SDL-ttf
              hsPkgs.SDL-gfx
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.old-locale
              hsPkgs.old-time
            ];
          };
        };
      };
    }