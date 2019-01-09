{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "aivika-experiment-chart"; version = "5.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2017. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Simulation experiments with charting for the Aivika library";
      description = "This package complements the aivika [1] and aivika-experiment [2] packages with\ncharting capabilites. Now the simulation results can be represented\nas charts.\n\nNevertheless, to plot the charts, you should use one of the rendering backends\nprovided by packages aivika-experiment-cairo [3] or aivika-experiment-diagrams [4].\nWhile the Cairo-based backend suits mostly to Linux and partially OS X, the Diagrams-based\nbackend is mainly destined for MS Windows, although it should work on Linux\nand OS X too.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[3] <http://hackage.haskell.org/package/aivika-experiment-cairo>\n\n\\[4] <http://hackage.haskell.org/package/aivika-experiment-diagrams>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.Chart)
          (hsPkgs.split)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.colour)
          (hsPkgs.aivika)
          (hsPkgs.aivika-experiment)
          ];
        };
      };
    }