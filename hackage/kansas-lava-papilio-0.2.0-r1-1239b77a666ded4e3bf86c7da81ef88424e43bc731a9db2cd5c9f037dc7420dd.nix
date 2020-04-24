{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava-papilio"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Gergő Érdi";
      maintainer = "Gergő Érdi <gergo@erdi.hu>";
      author = "Gergő Érdi";
      homepage = "";
      url = "";
      synopsis = "Kansas Lava support files for the Papilio FPGA board";
      description = "IO definitions of the Papilio FPGA board and its Wings and MegaWings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."netlist" or ((hsPkgs.pkgs-errors).buildDepError "netlist"))
          (hsPkgs."kansas-lava" or ((hsPkgs.pkgs-errors).buildDepError "kansas-lava"))
          (hsPkgs."kansas-lava-cores" or ((hsPkgs.pkgs-errors).buildDepError "kansas-lava-cores"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }