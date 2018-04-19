{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-image";
          version = "0.1.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "cailei@live.com";
        author = "Cai Lei";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to sdl2-image.";
        description = "Haskell binding to sdl2-image.";
        buildType = "Simple";
      };
      components = {
        sdl2-image = {
          depends  = [
            hsPkgs.base
            hsPkgs.sdl2
          ];
          libs = [ pkgs.SDL2 ];
        };
      };
    }