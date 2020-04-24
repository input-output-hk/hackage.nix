{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glazier-react-widget"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react-widget#readme";
      url = "";
      synopsis = "Generic widget library using glazier-react";
      description = "Generic widget library using glazier-react. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
          (hsPkgs."data-diverse-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse-lens"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."glazier" or ((hsPkgs.pkgs-errors).buildDepError "glazier"))
          (hsPkgs."glazier-react" or ((hsPkgs.pkgs-errors).buildDepError "glazier-react"))
          (hsPkgs."javascript-extras" or ((hsPkgs.pkgs-errors).buildDepError "javascript-extras"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-misc" or ((hsPkgs.pkgs-errors).buildDepError "lens-misc"))
          (hsPkgs."monadlist" or ((hsPkgs.pkgs-errors).buildDepError "monadlist"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base-stub"));
        buildable = true;
        };
      };
    }