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
    flags = { disable-psql-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gargoyle-postgresql"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Manage PostgreSQL servers with gargoyle";
      description = "This package provides tools for managing PostgreSQL servers that live in local folders and communicate via a Unix domain socket. It uses the <https://hackage.haskell.org/package/gargoyle gargoyle> package in order to automatically initialize, spin up, and spin down such servers according to client demand.\n\nThe `gargoyle-psql` executable is such a client which will try to connect to a PostgreSQL server at a given location:\n\n> gargoyle-psql db\n\n> psql (9.5.6)\n> Type \"help\" for help.\n>\n> postgres=#\n\nNote that `gargoyle-psql` assumes that PostgreSQL executables such as `psql` are available on the PATH. A custom 'Gargoyle' is required to use non-standard PostgreSQL installations.\n\nThe following is an example of using this package to run <https://hackage.haskell.org/package/postgresql-simple postgresql-simple> actions using a local DB:\n\n> import Database.PostgreSQL.Simple\n> import Gargoyle\n> import Gargoyle.PostgreSQL\n>\n> withDb :: String -> (Connection -> IO a) -> IO a\n> withDb dbPath a = withGargoyle defaultPostgres dbPath $ \\dbUri -> a =<< connectPostgreSQL dbUri";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
          (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "gargoyle-psql" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
        "gargoyle-pg-run" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
          ];
          buildable = true;
        };
        "gargoyle-postgres-monitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gargoyle-psql-test" = {
          depends = pkgs.lib.optionals (!flags.disable-psql-test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if flags.disable-psql-test then false else true;
        };
      };
    };
  }