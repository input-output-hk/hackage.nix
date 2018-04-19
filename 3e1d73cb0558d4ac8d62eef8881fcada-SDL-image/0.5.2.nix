{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "SDL-image";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2008, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL_image";
        description = "";
        buildType = "Custom";
      };
      components = {
        SDL-image = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
          ];
        };
      };
    }