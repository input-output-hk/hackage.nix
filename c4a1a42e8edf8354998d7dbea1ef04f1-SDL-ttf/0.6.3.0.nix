{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SDL-ttf";
          version = "0.6.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2010, Lemmih";
        maintainer = "Francesco Ariis <fa-ml@ariis.it>";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL_ttf";
        description = "This is a sample library which allows you to use TrueType\nfonts in your SDL applications.";
        buildType = "Custom";
      };
      components = {
        "SDL-ttf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
          ];
          libs = [ pkgs.SDL_ttf ];
        };
      };
    }