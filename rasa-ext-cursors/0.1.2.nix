{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rasa-ext-cursors";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "2016 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/rasa/";
        url = "";
        synopsis = "Rasa Ext adding cursor(s)";
        description = "Rasa Ext adding cursor(s)";
        buildType = "Simple";
      };
      components = {
        rasa-ext-cursors = {
          depends  = [
            hsPkgs.base
            hsPkgs.rasa
            hsPkgs.rasa-ext-style
            hsPkgs.text-lens
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.yi-rope
            hsPkgs.data-default
          ];
        };
      };
    }