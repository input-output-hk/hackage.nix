{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animate-sdl2";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Joe Vargas";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "https://github.com/jxv/animate-sdl2#readme";
        url = "";
        synopsis = "sdl2 + animate auxiliary library";
        description = "sdl2 is a commonly used media library. animate is a general animation library. Combining animate and sdl2, animate-sdl2 provides accessible glue-code to load and draw sprites.";
        buildType = "Simple";
      };
      components = {
        animate-sdl2 = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.animate
            hsPkgs.base
            hsPkgs.sdl2
            hsPkgs.sdl2-image
          ];
        };
      };
    }