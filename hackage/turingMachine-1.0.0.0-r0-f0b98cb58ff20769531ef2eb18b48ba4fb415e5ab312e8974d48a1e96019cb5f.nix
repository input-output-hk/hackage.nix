{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "turingMachine"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Jorge Santiago Alvarez Cuadros";
      maintainer = "sanjorgek@ciencias.unam.mx";
      author = "Jorge Santiago Alvarez Cuadros";
      homepage = "https://github.com/sanjorgek/turingMachine";
      url = "";
      synopsis = "An implementation of Turing Machine and Automaton";
      description = "An implementation of Turing Machine and Automaton for\nlanguage theory";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "state" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspecVariant" or ((hsPkgs.pkgs-errors).buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheckVariant"))
            (hsPkgs."turingMachine" or ((hsPkgs.pkgs-errors).buildDepError "turingMachine"))
            ];
          buildable = true;
          };
        "sigma" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspecVariant" or ((hsPkgs.pkgs-errors).buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheckVariant"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."turingMachine" or ((hsPkgs.pkgs-errors).buildDepError "turingMachine"))
            ];
          buildable = true;
          };
        "finite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspecVariant" or ((hsPkgs.pkgs-errors).buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheckVariant"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."turingMachine" or ((hsPkgs.pkgs-errors).buildDepError "turingMachine"))
            ];
          buildable = true;
          };
        };
      };
    }