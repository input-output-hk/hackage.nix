{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      gui = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gt-tools";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Mikhail S. Pobolovets 2009-2010";
        maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
        author = "Mikhail S. Pobolovets";
        homepage = "http://github.com/styx/gtc";
        url = "git://github.com/styx/gtc.git";
        synopsis = "Console and GUI interface for Google Translate service";
        description = "This package consist from console backend, GUI backend and Core module\nfor Google Translate service. It allows you to translate words and sentences\nbetween different languages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          gtc = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.extensible-exceptions
              hsPkgs.haskeline
              hsPkgs.HTTP
              hsPkgs.json
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.url
              hsPkgs.utf8-string
            ];
          };
          gtg = {
            depends  = pkgs.lib.optionals _flags.gui [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HTTP
              hsPkgs.json
              hsPkgs.glade
              hsPkgs.gtk
              hsPkgs.text
              hsPkgs.url
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }