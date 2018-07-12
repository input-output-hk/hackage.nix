{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "conductive-clock";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick@gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=conductive-clock";
        url = "";
        synopsis = "a library for displaying musical time in a terminal-based clock";
        description = "This library is for generating strings containing clock time, sending them across OSC, and displaying them in a terminal. In addition to the library functions, it contains a sample executable for displaying musical time in a terminal-based clock.";
        buildType = "Simple";
      };
      components = {
        "conductive-clock" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conductive-base
            hsPkgs.hosc
            hsPkgs.parseargs
            hsPkgs.vty
          ];
        };
      };
    }