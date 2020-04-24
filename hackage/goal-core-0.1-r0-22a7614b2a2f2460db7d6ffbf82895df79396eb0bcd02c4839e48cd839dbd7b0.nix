{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "goal-core"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Core imports for Geometric Optimization Libraries.";
      description = "Core provides a bunch of convenience functions, basic exports, as\nwell as plotting functionality, which are independent of the rest of the\nlibrary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
          (hsPkgs."Chart-gtk" or ((hsPkgs.pkgs-errors).buildDepError "Chart-gtk"))
          ];
        buildable = true;
        };
      exes = {
        "contours" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            ];
          buildable = true;
          };
        };
      };
    }