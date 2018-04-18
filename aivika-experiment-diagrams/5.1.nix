{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-experiment-diagrams";
          version = "5.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2017. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com";
        url = "";
        synopsis = "Diagrams-based charting backend for the Aivika simulation library";
        description = "This is one of the charting backends for the aivika-experiment-chart [1] package.\nIt allows rendering charts using the Chart-diagrams [2] package.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[2] <http://hackage.haskell.org/package/Chart-diagrams>\n";
        buildType = "Simple";
      };
      components = {
        aivika-experiment-diagrams = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.colour
            hsPkgs.lens
            hsPkgs.Chart
            hsPkgs.Chart-diagrams
            hsPkgs.aivika-experiment
            hsPkgs.aivika-experiment-chart
          ];
        };
      };
    }