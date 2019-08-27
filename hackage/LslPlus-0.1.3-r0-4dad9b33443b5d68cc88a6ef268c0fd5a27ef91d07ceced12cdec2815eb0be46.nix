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
    flags = {};
    package = {
      specVersion = "1.5";
      identifier = { name = "LslPlus"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Robert Greayer 2008.";
      maintainer = "robgreayer@yahoo.com";
      author = "Robert Greayer";
      homepage = "http:/lslplus.sourceforge.net/";
      url = "";
      synopsis = "An execution and testing framework for the Linden Scripting Language (LSL)";
      description = "Provides a framework for executing Linden Scripting Language scripts offline,\ni.e. outside a Second Life&#xAE; simulator.  The primary product is the LslPlus executable,\nwhich works in cooperation with the LSL Plus Eclipse plugin (the executable is not\nmuch use standalone).  It also provides a library, which includes a parser and\ncorresponding quasiquoter, a unit test framework for LSL, and a simulator for running\nscripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ];
        };
      exes = {
        "LslPlus" = {
          depends = [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ];
          };
        };
      };
    }