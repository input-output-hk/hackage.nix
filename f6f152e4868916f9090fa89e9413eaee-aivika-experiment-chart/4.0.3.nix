{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-experiment-chart";
          version = "4.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2015. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://github.com/dsorokin/aivika-experiment-chart";
        url = "";
        synopsis = "Simulation experiments with charting for the Aivika library";
        description = "This package complements the Aivika and Aivika Experiment packages with\ncharting capabilites. Now the simulation results can be represented\nas charts.\n\nNevertheless, to plot the charts, you hould use one of the rendering backends\nprovided by packages Aivika Experiment Cairo or Aivika Experiment Diagrams.\nWhile the Cairo backend suits mostly to Linux and partially OS X, the Diagrams\nbackend is mainly destined for MS Windows, although it should work on Linux\nand OS X too.\n";
        buildType = "Simple";
      };
      components = {
        aivika-experiment-chart = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.Chart
            hsPkgs.split
            hsPkgs.lens
            hsPkgs.data-default-class
            hsPkgs.colour
            hsPkgs.aivika
            hsPkgs.aivika-experiment
          ];
        };
      };
    }