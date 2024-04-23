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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gargoyle-postgresql-nix"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Manage PostgreSQL servers with gargoyle and nix";
      description = "Like <https://hackage.haskell.org/package/gargoyle-postgresql gargoyle-postgresql> but it uses nix to find the locations of PostgreSQL executables.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
          (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
          (hsPkgs."which" or (errorHandler.buildDepError "which"))
        ];
        buildable = true;
      };
      exes = {
        "gargoyle-nix-psql" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
            (hsPkgs."gargoyle-postgresql-nix" or (errorHandler.buildDepError "gargoyle-postgresql-nix"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
          ];
          buildable = true;
        };
        "gargoyle-nix-pg-run" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
            (hsPkgs."gargoyle-postgresql-nix" or (errorHandler.buildDepError "gargoyle-postgresql-nix"))
          ];
          buildable = true;
        };
        "gargoyle-nix-postgres-monitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
            (hsPkgs."gargoyle-postgresql-nix" or (errorHandler.buildDepError "gargoyle-postgresql-nix"))
          ];
          buildable = true;
        };
      };
    };
  }