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
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "selda-sqlite"; version = "0.1.7.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "SQLite backend for the Selda database EDSL.";
      description = "Allows the Selda database EDSL to be used with SQLite\ndatabases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optionals (!flags.haste) [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      };
    }