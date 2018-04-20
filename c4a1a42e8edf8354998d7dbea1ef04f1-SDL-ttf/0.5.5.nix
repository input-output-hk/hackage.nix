{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "SDL-ttf";
          version = "0.5.5";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2009, Lemmih";
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