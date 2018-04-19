{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-mixer";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2015 Vladimir Semyonov\nCopyright © 2015 Siniša Biđin";
        maintainer = "Siniša Biđin <sinisa@bidin.eu>";
        author = "Vladimir Semyonov <tempname011@gmail.com>\nSiniša Biđin <sinisa@bidin.eu>";
        homepage = "";
        url = "";
        synopsis = "Bindings to SDL2_mixer.";
        description = "Haskell bindings to SDL2_mixer.";
        buildType = "Simple";
      };
      components = {
        sdl2-mixer = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.sdl2
            hsPkgs.template-haskell
            hsPkgs.vector
          ];
          libs = [ pkgs.SDL2_mixer ];
        };
        exes = {
          sdl2-mixer-basic = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.sdl2
              hsPkgs.sdl2-mixer
            ];
          };
          sdl2-mixer-raw = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.sdl2-mixer
            ];
          };
          sdl2-mixer-jumbled = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.sdl2
              hsPkgs.sdl2-mixer
            ];
          };
          sdl2-mixer-music = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.sdl2
              hsPkgs.sdl2-mixer
            ];
          };
          sdl2-mixer-effect = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.sdl2
              hsPkgs.sdl2-mixer
              hsPkgs.vector
            ];
          };
        };
      };
    }