{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "SDL-ttf";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2005, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL_ttf";
        description = "";
        buildType = "Custom";
      };
      components = {
        SDL-ttf = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
          ];
        };
      };
    }