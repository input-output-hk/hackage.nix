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
          name = "sdl2-cairo";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Anton Pirogov";
        maintainer = "anton.pirogov@gmail.com";
        author = "Anton Pirogov";
        homepage = "";
        url = "";
        synopsis = "Render with Cairo on SDL textures. Includes optional convenience drawing API.";
        description = "This small library provides convenience functions to draw\non SDL2 textures with Cairo. As Cairo is complicated, it also\nprovides a drawing API, which is heavily inspired by Processing and\nis much more user-friendly. If it does not support something,\nyou can always embed direct Cairo commands, so you do not have\nto decide!";
        buildType = "Simple";
      };
      components = {
        "sdl2-cairo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.sdl2
            hsPkgs.cairo
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.time
          ];
        };
        exes = {
          "sdl2-cairo-test" = {
            depends  = pkgs.lib.optionals _flags.builddemo [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.cairo
              hsPkgs.sdl2-cairo
              hsPkgs.linear
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.time
            ];
          };
        };
      };
    }