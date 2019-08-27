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
      specVersion = "1.4";
      identifier = { name = "bein"; version = "0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Fred Ross";
      homepage = "";
      url = "";
      synopsis = "Bein is a provenance and workflow management system for bioinformatics.";
      description = "To avoid having thousands of files produced in a random way from a bunch of scripts, as is typically the case for a bioinformaticist, Bein keeps track of scripts, and their executions on various inputs.  It provides a web front end, and will integrate with LSF clusters.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "beinctl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "beind" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."hdaemonize" or (buildDepError "hdaemonize"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "beinclient" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "beinminion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "beinhttpd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."hdaemonize" or (buildDepError "hdaemonize"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."Crypto" or (buildDepError "Crypto"))
            (hsPkgs."happstack-util" or (buildDepError "happstack-util"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }