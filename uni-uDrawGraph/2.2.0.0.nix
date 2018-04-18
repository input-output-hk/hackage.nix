{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "uni-uDrawGraph";
          version = "2.2.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Christian.Maeder@dfki.de";
        author = "uniform@informatik.uni-bremen.de";
        homepage = "http://www.informatik.uni-bremen.de/uniform/wb";
        url = "";
        synopsis = "Graphs binding";
        description = "Binding to uDrawGraph (formerly daVinci)\n<http://www.informatik.uni-bremen.de/uDrawGraph/>";
        buildType = "Simple";
      };
      components = {
        uni-uDrawGraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.uni-util
            hsPkgs.uni-events
            hsPkgs.uni-posixutil
            hsPkgs.uni-reactor
            hsPkgs.uni-graphs
          ];
        };
      };
    }