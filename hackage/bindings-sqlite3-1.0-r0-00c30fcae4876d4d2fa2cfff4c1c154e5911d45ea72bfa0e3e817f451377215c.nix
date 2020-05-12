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
      specVersion = "1.2.3";
      identifier = { name = "bindings-sqlite3"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-sqlite3";
      url = "";
      synopsis = "Low level bindings to sqlite3.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-common" or (errorHandler.buildDepError "bindings-common"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sqlite3" or (errorHandler.pkgConfDepError "sqlite3"))
          ];
        buildable = true;
        };
      };
    }