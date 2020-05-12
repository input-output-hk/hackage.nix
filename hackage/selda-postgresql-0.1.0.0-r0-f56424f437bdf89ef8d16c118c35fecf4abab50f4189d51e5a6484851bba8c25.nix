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
      identifier = { name = "selda-postgresql"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "PostgreSQL backend for the Selda database EDSL.";
      description = "PostgreSQL backend for the Selda database EDSL.\nRequires the PostgreSQL @libpq@ development libraries to be\ninstalled.";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          ];
        buildable = true;
        };
      };
    }