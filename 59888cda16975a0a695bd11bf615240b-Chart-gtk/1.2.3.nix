{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Chart-gtk";
          version = "1.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2010";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "https://github.com/timbod7/haskell-chart/wiki";
        url = "";
        synopsis = "Utility functions for using the chart library with GTK";
        description = "Utility functions for using the chart library with GTK";
        buildType = "Simple";
      };
      components = {
        Chart-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.colour
            hsPkgs.gtk
            hsPkgs.Chart
            hsPkgs.Chart-cairo
          ];
        };
      };
    }