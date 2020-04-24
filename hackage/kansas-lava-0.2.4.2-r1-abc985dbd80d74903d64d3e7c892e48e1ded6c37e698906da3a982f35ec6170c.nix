{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { all = false; unit = false; tools = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava"; version = "0.2.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
      url = "";
      synopsis = "Kansas Lava is a hardware simulator and VHDL generator.";
      description = "Kansas Lava is a Domain Specific Language (DSL) for expressing\nhardware-oriented descriptions of computations, and is hosted inside\nthe language Haskell. Kansas Lava programs are descriptions of\nspecific hardware entities, the connections between them, and other\ncomputational abstractions that can compile down to these entities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."netlist" or ((hsPkgs.pkgs-errors).buildDepError "netlist"))
          (hsPkgs."netlist-to-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "netlist-to-vhdl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
          ];
        buildable = true;
        };
      exes = {
        "kansas-lava-unittest" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
              (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."netlist" or ((hsPkgs.pkgs-errors).buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = if flags.unit || flags.all then true else false;
          };
        "kansas-lava-testreport" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
              (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."netlist" or ((hsPkgs.pkgs-errors).buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = if flags.unit || flags.all then true else false;
          };
        "kansas-lava-tbf2vcd" = {
          depends = if flags.tools || flags.all
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
              (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."netlist" or ((hsPkgs.pkgs-errors).buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = if flags.tools || flags.all then true else false;
          };
        };
      };
    }