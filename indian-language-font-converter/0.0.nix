{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "indian-language-font-converter";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Akash Fulchand Jagdhane";
        author = "Akash Fulchand Jagdhane";
        homepage = "";
        url = "";
        synopsis = "Indian Language Font Converter";
        description = "The package is made for people who want to get the sentences in Hindi or Marathi font so that they don't need to remember keys on keyboards when they type Hindi or Marathi script. Or they don't need to waste time on virtual keyboards where everything works with a mouse.";
        buildType = "Simple";
      };
      components = {
        indian-language-font-converter = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.HDBC-sqlite3
            hsPkgs.gtk
          ];
        };
      };
    }