{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "squeeze"; version = "1.0.4.8"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto <colon> squeeze <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/Squeeze/squeeze.html";
      url = "";
      synopsis = "A file-packing application.";
      description = "Returns progressively better subsets of the specified files, selected to fit into a limited space, without wasting more than the specific ratio.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."factory" or ((hsPkgs.pkgs-errors).buildDepError "factory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
          ];
        buildable = true;
        };
      exes = {
        "squeeze" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."factory" or ((hsPkgs.pkgs-errors).buildDepError "factory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."squeeze" or ((hsPkgs.pkgs-errors).buildDepError "squeeze"))
            (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickCheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."factory" or ((hsPkgs.pkgs-errors).buildDepError "factory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."squeeze" or ((hsPkgs.pkgs-errors).buildDepError "squeeze"))
            (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      };
    }