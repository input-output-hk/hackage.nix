let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { all = false; unit = false; tools = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava"; version = "0.2.4.4"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."dotgen" or (buildDepError "dotgen"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."sized-types" or (buildDepError "sized-types"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."netlist" or (buildDepError "netlist"))
          (hsPkgs."netlist-to-vhdl" or (buildDepError "netlist-to-vhdl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-reify" or (buildDepError "data-reify"))
          ];
        buildable = true;
        };
      exes = {
        "kansas-lava-unittest" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."dotgen" or (buildDepError "dotgen"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."sized-types" or (buildDepError "sized-types"))
              (hsPkgs."data-default" or (buildDepError "data-default"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."strict" or (buildDepError "strict"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."netlist" or (buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."data-reify" or (buildDepError "data-reify"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = if flags.unit || flags.all then true else false;
          };
        "kansas-lava-testreport" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."dotgen" or (buildDepError "dotgen"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."sized-types" or (buildDepError "sized-types"))
              (hsPkgs."data-default" or (buildDepError "data-default"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."strict" or (buildDepError "strict"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."netlist" or (buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."data-reify" or (buildDepError "data-reify"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = if flags.unit || flags.all then true else false;
          };
        "kansas-lava-tbf2vcd" = {
          depends = if flags.tools || flags.all
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."dotgen" or (buildDepError "dotgen"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."sized-types" or (buildDepError "sized-types"))
              (hsPkgs."data-default" or (buildDepError "data-default"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."strict" or (buildDepError "strict"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."netlist" or (buildDepError "netlist"))
              (hsPkgs."netlist-to-vhdl" or (buildDepError "netlist-to-vhdl"))
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."data-reify" or (buildDepError "data-reify"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = if flags.tools || flags.all then true else false;
          };
        };
      };
    }