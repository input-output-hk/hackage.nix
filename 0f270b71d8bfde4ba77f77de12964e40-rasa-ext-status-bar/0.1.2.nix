{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rasa-ext-status-bar";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "2016 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/rasa/";
        url = "";
        synopsis = "Rasa Ext for populating status-bar";
        description = "Rasa Ext for populating status-status-bar";
        buildType = "Simple";
      };
      components = {
        "rasa-ext-status-bar" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rasa
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.yi-rope
          ];
        };
      };
    }