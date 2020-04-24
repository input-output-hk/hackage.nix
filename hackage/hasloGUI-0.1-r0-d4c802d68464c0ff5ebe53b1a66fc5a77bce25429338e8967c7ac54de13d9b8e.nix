{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "hasloGUI"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "Loan calculator Gtk GUI. Based on haslo (Haskell Loan) library.";
      description = "Example of usage of loan library named Haslo and of wtk-gtk wrapper over gtk.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HasloGUI" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."lenses" or ((hsPkgs.pkgs-errors).buildDepError "lenses"))
            (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."haslo" or ((hsPkgs.pkgs-errors).buildDepError "haslo"))
            (hsPkgs."wtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk"))
            (hsPkgs."wtk-gtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk-gtk"))
            ];
          buildable = true;
          };
        };
      };
    }