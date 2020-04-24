{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graph = true; full = true; sdl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-vis"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "http://felsin9.de/nnis/ghc-vis";
      url = "";
      synopsis = "Live visualization of data structures in GHCi";
      description = "Visualize live data structures in GHCi. Evaluation is not\nforced and you can interact with the visualized data\nstructures. This allows seeing Haskell's lazy evaluation\nand sharing in action.\n\nSee <http://felsin9.de/nnis/ghc-vis/#basic-usage> for the\nbasic usage of ghc-vis or watch a short video demonstrating\nhow it can be used with GHCi's debugger:\n<http://felsin9.de/nnis/ghc-vis/#combined-debugger>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."ghc-heap-view" or ((hsPkgs.pkgs-errors).buildDepError "ghc-heap-view"))
          ] ++ (pkgs.lib).optionals (flags.graph) [
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."xdot" or ((hsPkgs.pkgs-errors).buildDepError "xdot"))
          ]) ++ (pkgs.lib).optional (flags.full) (hsPkgs."svgcairo" or ((hsPkgs.pkgs-errors).buildDepError "svgcairo"))) ++ (pkgs.lib).optionals (flags.sdl) [
          (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          ];
        buildable = true;
        };
      };
    }