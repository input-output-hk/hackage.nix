{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "CarneadesDSL"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "http://www.cs.nott.ac.uk/~bmv/CarneadesDSL/";
      url = "";
      synopsis = "An implementation and DSL for the Carneades argumentation model.";
      description = "An implementation and domain specific language for the Carneades\nargumentation model. See Haskell Gets Argumentative in the\nProceedings of Symposium on Trends in Functional Programming\n(TFP 2012) by Bas van Gijzel and Henrik Nilsson or the\npackage's homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."Graphalyze" or ((hsPkgs.pkgs-errors).buildDepError "Graphalyze"))
          ];
        buildable = true;
        };
      };
    }