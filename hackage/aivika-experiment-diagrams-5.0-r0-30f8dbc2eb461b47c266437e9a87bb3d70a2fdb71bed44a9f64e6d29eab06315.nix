{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "aivika-experiment-diagrams"; version = "5.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
          (hsPkgs."aivika-experiment" or ((hsPkgs.pkgs-errors).buildDepError "aivika-experiment"))
          (hsPkgs."aivika-experiment-chart" or ((hsPkgs.pkgs-errors).buildDepError "aivika-experiment-chart"))
          ];
        buildable = true;
        };
      };
    }