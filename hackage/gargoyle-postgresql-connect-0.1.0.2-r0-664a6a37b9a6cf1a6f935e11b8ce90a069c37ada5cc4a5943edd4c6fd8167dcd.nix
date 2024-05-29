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
      identifier = {
        name = "gargoyle-postgresql-connect";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Connect to gargoyle-managed postgresql instances";
      description = "A convenience utility for connecting to a postgresql instance managed by gargoyle.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."gargoyle" or (errorHandler.buildDepError "gargoyle"))
          (hsPkgs."gargoyle-postgresql" or (errorHandler.buildDepError "gargoyle-postgresql"))
          (hsPkgs."gargoyle-postgresql-nix" or (errorHandler.buildDepError "gargoyle-postgresql-nix"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
        ];
        buildable = true;
      };
    };
  }