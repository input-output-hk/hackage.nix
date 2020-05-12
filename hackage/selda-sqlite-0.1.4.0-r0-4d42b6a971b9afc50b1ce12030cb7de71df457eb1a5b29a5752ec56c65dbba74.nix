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
      identifier = { name = "selda-sqlite"; version = "0.1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "SQLite backend for the Selda database EDSL.";
      description = "SQLite backend for the Selda database EDSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optionals (!flags.haste) [
          (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }