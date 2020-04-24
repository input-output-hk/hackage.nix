{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "aivika-experiment-chart"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika-experiment-chart";
      url = "";
      synopsis = "Simulation experiments with charting for the Aivika library";
      description = "This package complements the Aivika and Aivika Experiment packages with\ncharting capabilites. Now the simulation results can be represented\nas charts.\n\nIt was intentionally made a separate package as it has heavy dependencies\non Haskell Charts, Cairo and GTK.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."aivika" or ((hsPkgs.pkgs-errors).buildDepError "aivika"))
          (hsPkgs."aivika-experiment" or ((hsPkgs.pkgs-errors).buildDepError "aivika-experiment"))
          ];
        buildable = true;
        };
      };
    }