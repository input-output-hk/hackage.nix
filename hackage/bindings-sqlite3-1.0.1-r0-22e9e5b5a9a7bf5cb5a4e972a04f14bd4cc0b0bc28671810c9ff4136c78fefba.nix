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
      specVersion = "1.2";
      identifier = { name = "bindings-sqlite3"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to sqlite3.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."sqlite3" or (errorHandler.pkgConfDepError "sqlite3"))
        ];
        buildable = true;
      };
    };
  }