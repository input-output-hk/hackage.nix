{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "leancheck"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/leancheck#readme";
      url = "";
      synopsis = "Enumerative property-based testing";
      description = "LeanCheck is a simple enumerative property-based testing library.\n\nProperties are defined as Haskell functions returning a boolean value which\nshould be true for all possible choices of argument values.    LeanCheck\napplies enumerated argument values to these properties in search for a\ncounterexample.  Properties can be viewed as parameterized unit tests.\n\nLeanCheck works by producing tiers of test values: a possibly infinite list\nof finite sublists of same-and-increasingly-sized values.\n\nLeanCheck has lean core with only 180 lines of Haskell code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "types" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "tiers" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "operators" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "derive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "error" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "io" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "fun" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "funshow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "stats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }