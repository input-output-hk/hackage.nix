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
    flags = { enable-psql-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gargoyle-postgresql"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Manage PostgreSQL servers with gargoyle";
      description = "This package provides tools for managing PostgreSQL servers that live in local folders and communicate via a Unix domain socket. It uses the <https://hackage.haskell.org/package/gargoyle gargoyle> package in order to automatically initialize, spin up, and spin down such servers according to client demand.\n\nThe `gargoyle-psql` executable is such a client which will try to connect to a PostgreSQL server at a given location:\n\n> gargoyle-psql db\n\n> psql (9.5.6)\n> Type \"help\" for help.\n>\n> postgres=#\n\nNote that `gargoyle-psql` assumes that PostgreSQL executables such as `psql` are available on the PATH. A custom 'Gargoyle' is required to use non-standard PostgreSQL installations.\n\nThe following is an example of using this package to run <https://hackage.haskell.org/package/postgresql-simple postgresql-simple> actions using a local DB:\n\n> import Database.PostgreSQL.Simple\n> import Gargoyle\n> import Gargoyle.PostgreSQL\n>\n> withDb :: String -> (Connection -> IO a) -> IO a\n> withDb dbPath a = withGargoyle defaultPostgres dbPath \$ \\dbUri -> a =<< connectPostgreSQL dbUri";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."gargoyle" or (buildDepError "gargoyle"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "gargoyle-psql" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."gargoyle" or (buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = true;
          };
        "gargoyle-postgres-monitor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."gargoyle" or (buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gargoyle-psql-test" = {
          depends = (pkgs.lib).optionals (!(!flags.enable-psql-test)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gargoyle" or (buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = if !flags.enable-psql-test then false else true;
          };
        };
      };
    }