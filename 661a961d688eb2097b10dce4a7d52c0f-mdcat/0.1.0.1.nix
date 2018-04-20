{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mdcat";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dorafmon@gmail.com";
        author = "Bob Fang";
        homepage = "https://github.com/dorafmon/mdcat";
        url = "";
        synopsis = "Markdown viewer in your terminal";
        description = "A simple command line tool for viewing markdown in your terminal";
        buildType = "Simple";
      };
      components = {
        exes = {
          mdcat = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc
              hsPkgs.directory
              hsPkgs.ansi-terminal
              hsPkgs.terminfo
            ];
          };
        };
      };
    }