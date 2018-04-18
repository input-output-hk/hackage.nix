{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "terminal-size";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Andreas Hammar, Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Get terminal window height and width";
        description = "Get terminal window height and width without ncurses dependency\n\nOnly tested to work on GNU/Linux systems";
        buildType = "Simple";
      };
      components = {
        terminal-size = {
          depends  = [ hsPkgs.base ];
        };
      };
    }