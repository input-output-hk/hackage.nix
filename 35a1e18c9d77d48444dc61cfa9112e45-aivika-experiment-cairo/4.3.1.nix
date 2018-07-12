{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-experiment-cairo";
          version = "4.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2015. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://github.com/dsorokin/aivika-experiment-cairo";
        url = "";
        synopsis = "Cairo backend for the Aivika simulation library";
        description = "This package complements the Aivika and Aivika Experiment packages\nand it allows rendering the charts using the Chart-cairo library.\n";
        buildType = "Simple";
      };
      components = {
        "aivika-experiment-cairo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.aivika-experiment
            hsPkgs.aivika-experiment-chart
          ];
        };
      };
    }