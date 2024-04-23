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
    flags = { all = false; unit = false; tools = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava"; version = "0.2.4.5"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
          (hsPkgs."netlist-to-vhdl" or (errorHandler.buildDepError "netlist-to-vhdl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
        ];
        buildable = true;
      };
      exes = {
        "kansas-lava-unittest" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (errorHandler.buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.unit || flags.all then true else false;
        };
        "kansas-lava-testreport" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (errorHandler.buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.unit || flags.all then true else false;
        };
        "kansas-lava-tbf2vcd" = {
          depends = if flags.tools || flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."sized-types" or (errorHandler.buildDepError "sized-types"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (errorHandler.buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.tools || flags.all then true else false;
        };
      };
    };
  }