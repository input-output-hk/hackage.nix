{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava-shake"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Gergő Érdi";
      maintainer = "Gergo Erdi <gergo@erdi.hu>";
      author = "Gergo Erdi";
      homepage = "";
      url = "";
      synopsis = "Shake rules for building Kansas Lava projects";
      description = "Shake rules for building Kansas Lava projects. Currently supports the\nXilinx FPGA tooling only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kansas-lava" or ((hsPkgs.pkgs-errors).buildDepError "kansas-lava"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hastache" or ((hsPkgs.pkgs-errors).buildDepError "hastache"))
          ];
        buildable = true;
        };
      };
    }