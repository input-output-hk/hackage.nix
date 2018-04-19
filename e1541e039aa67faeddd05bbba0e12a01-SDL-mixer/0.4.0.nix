{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "SDL-mixer";
          version = "0.4.0";
        };
        license = "NONE";
        copyright = "2004-2005, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL_mixer";
        description = "";
        buildType = "Custom";
      };
      components = {
        SDL-mixer = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
          ];
        };
      };
    }