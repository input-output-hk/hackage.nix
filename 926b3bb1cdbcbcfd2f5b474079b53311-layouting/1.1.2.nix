{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "layouting";
          version = "1.1.2";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2018 Luna Team";
        maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
        author = "Luna Team";
        homepage = "https://github.com/luna/layouting";
        url = "";
        synopsis = "General layouting library. Currently supports layouting 2D areas and can be used as a backend for text pretty printing or automatic windows layouting managers.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "layouting" = {
          depends  = [
            hsPkgs.base
            hsPkgs.container
            hsPkgs.layered-state
            hsPkgs.prologue
            hsPkgs.terminal-text
            hsPkgs.text
          ];
        };
      };
    }