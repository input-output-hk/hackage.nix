{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rasa-ext-slate";
          version = "0.1.7";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/rasa/";
        url = "";
        synopsis = "Rasa extension for rendering to terminal with vty";
        description = "Rasa extension for rendering to terminal with vty";
        buildType = "Simple";
      };
      components = {
        rasa-ext-slate = {
          depends  = [
            hsPkgs.base
            hsPkgs.rasa
            hsPkgs.rasa-ext-views
            hsPkgs.recursion-schemes
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.yi-rope
            hsPkgs.lens
            hsPkgs.vty
            hsPkgs.rasa-ext-logger
          ];
        };
      };
    }