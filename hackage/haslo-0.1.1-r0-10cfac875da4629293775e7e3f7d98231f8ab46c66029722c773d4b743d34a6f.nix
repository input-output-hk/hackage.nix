{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "haslo"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "Loan calculator engine.";
      description = "Loan calculator engine implementing rules mentioned in paper \"Haskell Loan Library\".\nSee more here: https://github.com/bartoszw/haslo/blob/master/haslo.pdf.\nAcronym from Haskell Loan.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."wtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "hasloQC" = {
          depends = [
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."wtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk"))
            ];
          buildable = true;
          };
        "hasloSample" = {
          depends = [
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."wtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk"))
            ];
          buildable = true;
          };
        };
      };
    }