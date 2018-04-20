{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rasa-ext-logger";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2016 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/rasa/";
        url = "";
        synopsis = "Rasa Ext for logging state/actions";
        description = "Rasa Ext for logging state/actions";
        buildType = "Simple";
      };
      components = {
        rasa-ext-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.rasa
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.lens
          ];
        };
      };
    }