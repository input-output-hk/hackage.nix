{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-ttf";
          version = "2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013-2017 Ömer Sinan Ağacan, Siniša Biđin, Rongcui Dong";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Rongcui Dong (rongcuid@outlook.com),\nSiniša Biđin <sinisa@bidin.eu>,\nÖmer Sinan Ağacan (omeragacan@gmail.com),\nSean Chalmers (sclhiannan@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Bindings to SDL2_ttf.";
        description = "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
        buildType = "Simple";
      };
      components = {
        sdl2-ttf = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.sdl2
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          sdl2-ttf-example = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.sdl2
              hsPkgs.sdl2-ttf
              hsPkgs.text
            ];
          };
        };
      };
    }