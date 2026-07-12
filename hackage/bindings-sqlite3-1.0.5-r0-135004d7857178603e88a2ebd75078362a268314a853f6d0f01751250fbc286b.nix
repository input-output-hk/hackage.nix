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
      identifier = { name = "bindings-sqlite3"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to sqlite3";
      description = "Low level bindings to sqlite3, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://www.sqlite.org>";
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