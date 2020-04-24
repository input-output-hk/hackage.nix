{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "LTS"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "©2020 Ajay Kumar Eeralla";
      maintainer = "aeeralla@galois.com";
      author = "Ajay Kumar Eeralla";
      homepage = "";
      url = "";
      synopsis = "LTS: Labelled Transition System";
      description = "This is an implementation of labelled transition system and\nfollow the README for information on importing and getting started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          ];
        buildable = true;
        };
      exes = {
        "LTS" = {
          depends = [
            (hsPkgs."LTS" or ((hsPkgs.pkgs-errors).buildDepError "LTS"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lts-tests" = {
          depends = [
            (hsPkgs."LTS" or ((hsPkgs.pkgs-errors).buildDepError "LTS"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "lts-bench" = {
          depends = [
            (hsPkgs."LTS" or ((hsPkgs.pkgs-errors).buildDepError "LTS"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }