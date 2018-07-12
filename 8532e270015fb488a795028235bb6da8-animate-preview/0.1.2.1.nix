{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animate-preview";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Joe Vargas";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "https://github.com/jxv/animate-preview#readme";
        url = "";
        synopsis = "Preview tool for sprite animation";
        description = "Preview tool for sprite animation";
        buildType = "Simple";
      };
      components = {
        "animate-preview" = {
          depends  = [
            hsPkgs.StateVar
            hsPkgs.aeson
            hsPkgs.animate
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.key-state
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.optparse-generic
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.safe-exceptions
            hsPkgs.sdl2
            hsPkgs.sdl2-gfx
            hsPkgs.sdl2-image
            hsPkgs.sdl2-ttf
            hsPkgs.text
            hsPkgs.text-conversions
            hsPkgs.vector
          ];
        };
        exes = {
          "animate-preview" = {
            depends  = [
              hsPkgs.animate-preview
              hsPkgs.base
            ];
          };
        };
      };
    }