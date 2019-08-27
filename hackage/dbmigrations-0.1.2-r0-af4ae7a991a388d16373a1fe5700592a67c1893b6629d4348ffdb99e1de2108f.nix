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
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "dbmigrations"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/dbmigrations/";
      url = "";
      synopsis = "An implementation of relational database \"migrations\"";
      description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database.\nIn particular, this package lets the migration\nauthor express explicit dependencies between\nmigrations and the management tool automatically\ninstalls or reverts migrations accordingly, using\ntransactions for safety.\nThis package is written to support any\nHDBC-supported database, although at present only\nPostgreSQL is fully supported.\nTo get started, see the included 'README' and\n'MOO.TXT' files and the usage output for the\n'moo' command.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "dbmigrations-tests" = {
          depends = [
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "moo" = {};
        "store-manager" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        };
      };
    }