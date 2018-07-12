{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Commando";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lyndon@sordina.net";
        author = "Lyndon Maydwell";
        homepage = "https://github.com/sordina/Commando";
        url = "";
        synopsis = "Watch some files; Rerun a command";
        description = "Commando comes in two forms - A library and an executable.\n\n* Executable\n\nWatch a directory, and when changes occur, run a command.\n\nFrom the commandline the program is used like so:\n\n> commando -c echo\n\nThis will watch the current directory, and when an event occurs, pass the serialized\nrepresentation of the event as an argument to `echo`.\n\n* Library\n\nTo use the library just\n\n> import System.Commando\n\nSee the \"System.Commando\" module documentation for more details.";
        buildType = "Simple";
      };
      components = {
        "Commando" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.system-filepath
            hsPkgs.optparse-applicative
            hsPkgs.system-fileio
            hsPkgs.fsnotify
            hsPkgs.process
          ];
        };
        exes = {
          "commando" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.optparse-applicative
              hsPkgs.system-fileio
              hsPkgs.fsnotify
              hsPkgs.process
            ];
          };
        };
      };
    }