{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
          (hsPkgs."kansas-lava" or (errorHandler.buildDepError "kansas-lava"))
          (hsPkgs."kansas-lava-cores" or (errorHandler.buildDepError "kansas-lava-cores"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }