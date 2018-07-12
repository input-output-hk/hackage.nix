{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Chart-simple";
          version = "1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2010";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "https://github.com/timbod7/haskell-chart/wiki";
        url = "";
        synopsis = "A wrapper for the chart library to assist with basic plots";
        description = "A wrapper for the chart library to assist with basic plots";
        buildType = "Simple";
      };
      components = {
        "Chart-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.data-default-class
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.colour
            hsPkgs.gtk
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.Chart-gtk
          ];
        };
      };
    }