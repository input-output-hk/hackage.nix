{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-sass"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Felipe Garay";
      maintainer = "felipe.garay@usach.cl";
      author = "Felipe Garay";
      homepage = "";
      url = "";
      synopsis = "A simple quasiquoter to include sass code in yesod";
      description = "This is a simple quasiquoter to include sass code in yesod.\nYou can use wsass to create a widget in the same way as\nlucius.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsass" or ((hsPkgs.pkgs-errors).buildDepError "hsass"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }