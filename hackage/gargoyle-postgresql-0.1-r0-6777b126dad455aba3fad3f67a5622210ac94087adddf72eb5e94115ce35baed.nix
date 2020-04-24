{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."gargoyle" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."stringsearch" or ((hsPkgs.pkgs-errors).buildDepError "stringsearch"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "gargoyle-psql" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."gargoyle" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        "gargoyle-postgres-monitor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."gargoyle" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gargoyle-psql-test" = {
          depends = (pkgs.lib).optionals (!(!flags.enable-psql-test)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gargoyle" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = if !flags.enable-psql-test then false else true;
          };
        };
      };
    }