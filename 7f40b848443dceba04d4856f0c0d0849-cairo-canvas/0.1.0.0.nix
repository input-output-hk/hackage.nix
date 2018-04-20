{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      builddemo = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cairo-canvas";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2017 Anton Pirogov";
        maintainer = "anton.pirogov@gmail.com";
        author = "Anton Pirogov";
        homepage = "";
        url = "";
        synopsis = "Simpler drawing API for Cairo.";
        description = "This library provides an alternative drawing API for\nCairo which is heavily inspired by Processing and\nis much more user-friendly. If it does not support something,\nyou can always embed direct Cairo commands.";
        buildType = "Simple";
      };
      components = {
        cairo-canvas = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.time
          ];
        };
        exes = {
          cairo-canvas-test = {
            depends  = pkgs.lib.optionals _flags.builddemo [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.cairo
              hsPkgs.sdl2-cairo
              hsPkgs.cairo-canvas
              hsPkgs.linear
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.time
            ];
          };
        };
      };
    }