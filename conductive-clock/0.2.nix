{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "conductive-clock";
          version = "0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick@gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=conductive-clock";
        url = "";
        synopsis = "a library for displaying musical time in a terminal-based clock";
        description = "PLEASE DO NOT INSTALL THIS AT THIS TIME. This library was for displaying a Conductive TempoClock in a separate terminal. Hackage says it does not build, and I have not been using it. This package is now empty, perhaps to return at a later date. It probably should have remained an experimental package on my website rather than appearing here in Hackage.";
        buildType = "Simple";
      };
      components = {
        conductive-clock = {};
      };
    }