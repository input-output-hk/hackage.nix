{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gegl";
          version = "0.0.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "nek0@nek0.eu";
        author = "nek0";
        homepage = "https://github.com/nek0/gegl#readme";
        url = "";
        synopsis = "Haskell bindings to GEGL library";
        description = "see homepage for description.";
        buildType = "Simple";
      };
      components = {
        gegl = {
          depends  = [
            hsPkgs.base
            hsPkgs.inline-c
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.split
            hsPkgs.monad-loops
            hsPkgs.glib
            hsPkgs.babl
          ];
          libs = [ pkgs."gegl-0.3" ];
        };
        exes = {
          example00 = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.gegl
            ];
          };
          example01 = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.gegl
              hsPkgs.babl
              hsPkgs.linear
              hsPkgs.monad-loops
            ];
          };
          example02 = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.gegl
              hsPkgs.babl
              hsPkgs.monad-loops
            ];
          };
        };
      };
    }