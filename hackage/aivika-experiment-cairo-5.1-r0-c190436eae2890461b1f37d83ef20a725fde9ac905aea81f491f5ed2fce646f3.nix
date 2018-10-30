{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "aivika-experiment-cairo";
        version = "5.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Cairo-based charting backend for the Aivika simulation library";
      description = "This is one of the charting backends for the aivika-experiment-chart [1] package.\nIt allows rendering charts using the Chart-cairo [2] package.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[2] <http://hackage.haskell.org/package/Chart-cairo>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.lens)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.aivika-experiment)
          (hsPkgs.aivika-experiment-chart)
        ];
      };
    };
  }