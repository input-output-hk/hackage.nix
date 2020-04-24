{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "prednote-test"; version = "0.26.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/prednote";
      url = "";
      synopsis = "Tests and QuickCheck generators to accompany prednote.";
      description = "These are packaged separately so other packages may depend\non them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
          (hsPkgs."rainbow-tests" or ((hsPkgs.pkgs-errors).buildDepError "rainbow-tests"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."prednote" or ((hsPkgs.pkgs-errors).buildDepError "prednote"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
          (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
          ];
        buildable = true;
        };
      exes = {
        "prednote-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
            (hsPkgs."rainbow-tests" or ((hsPkgs.pkgs-errors).buildDepError "rainbow-tests"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prednote" or ((hsPkgs.pkgs-errors).buildDepError "prednote"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
            ];
          buildable = true;
          };
        "prednote-visual-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
            (hsPkgs."rainbow-tests" or ((hsPkgs.pkgs-errors).buildDepError "rainbow-tests"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prednote" or ((hsPkgs.pkgs-errors).buildDepError "prednote"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
            ];
          buildable = true;
          };
        };
      };
    }