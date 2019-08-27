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
    flags = { all = false; unit = false; spartan3e = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava-cores"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
      url = "";
      synopsis = "FPGA Cores Written in Kansas Lava.";
      description = "Kansas Lava Cores is a collection of libraries, written in Kansas Lava,\nthat describe specific hardware components, as well as a Spartan3e\nboard monad and simulator, and testing framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."kansas-lava" or (buildDepError "kansas-lava"))
          (hsPkgs."sized-types" or (buildDepError "sized-types"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "spartan3e-demo" = {
          depends = if flags.spartan3e || flags.all
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."kansas-lava" or (buildDepError "kansas-lava"))
              (hsPkgs."sized-types" or (buildDepError "sized-types"))
              (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
              (hsPkgs."data-default" or (buildDepError "data-default"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "kansas-lava-cores-tests" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."kansas-lava" or (buildDepError "kansas-lava"))
              (hsPkgs."sized-types" or (buildDepError "sized-types"))
              (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
              (hsPkgs."data-default" or (buildDepError "data-default"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }